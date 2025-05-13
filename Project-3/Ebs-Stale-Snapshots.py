import boto3

def lambda_handler(event, context):
    ec2 = boto3.client('ec2')
    
    # Get all EBS snapshots owned by self
    response = ec2.describe_snapshots(OwnerIds=['self'])

    # Get all active EC2 instance IDs
    instances_response = ec2.describe_instances(
        Filters=[{'Name': 'instance-state-name', 'Values': ['running']}]
    )
    active_instance_ids = set()

    for reservation in instances_response['Reservations']:
        for instance in reservation['Instances']:
            active_instance_ids.add(instance['InstanceId'])

    # Get all volumes in use by these instances
    volumes_response = ec2.describe_volumes()
    used_volume_ids = set()
    
    for volume in volumes_response['Volumes']:
        for attachment in volume.get('Attachments', []):
            if attachment['InstanceId'] in active_instance_ids:
                used_volume_ids.add(volume['VolumeId'])

    # Iterate through each snapshot and delete if it's not used
    for snapshot in response['Snapshots']:
        snapshot_id = snapshot['SnapshotId']
        volume_id = snapshot.get('VolumeId')

        if not volume_id or volume_id not in used_volume_ids:
            # Delete stale snapshot
            try:
                ec2.delete_snapshot(SnapshotId=snapshot_id)
                print(f"Deleted stale snapshot {snapshot_id}")
            except Exception as e:
                print(f"Error deleting snapshot {snapshot_id}: {e}")
        else:
            print(f"Snapshot {snapshot_id} is in use by active volume {volume_id}")
