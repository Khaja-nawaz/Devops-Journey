# Load  Balancer-SG

resource "aws_security_group" "alb" {
  name        = "ALB-SG"
  description = "Load Balancer-SG"
  vpc_id      = aws_vpc.MY_VPC.id


  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "alb-sg"
  }
}



# Web server-SG
resource "aws_security_group" "web-server" {
  name        = "Web-Server-SG"
  description = "Web Server-SG"
  vpc_id      = aws_vpc.MY_VPC.id

  # Allow HTTp from ALB ONly 
  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.alb.id] # this is reference the alb security group
  }
  # allowing ssh cuz (for debugging)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  # Allowing al the outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
  tags = {
    Name = "Web-server-sg"
  }

}


#target group

resource "aws_lb_target_group" "web-server-tg" {
  name     = "web-server-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.MY_VPC.id

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }
}

resource "aws_autoscaling_group" "scaling-group" {
  name                = "scaling-group"
  min_size            = 2
  max_size            = 4
  desired_capacity    = 2
  vpc_zone_identifier = [aws_subnet.public-1.id, aws_subnet.public-2.id]
  target_group_arns   = [aws_lb_target_group.web-server-tg.arn]

  launch_template {
    id      = aws_launch_template.web_server_template.id
    version = "$Latest"
  }
}


resource "aws_lb" "web_server_alb" {
  name               = "web-server-alb"
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb.id]
  subnets            = [aws_subnet.public-1.id, aws_subnet.public-2.id]

}

resource "aws_lb_listener" "listner" {
  load_balancer_arn = aws_lb.web_server_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web-server-tg.arn
  }
}

