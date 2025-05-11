# 🐧 Linux Compression & Archiving – May 10, 2025

Today I practiced various Linux archiving and compression tools including `zip`, `unzip`, `tar`, `bzip2`, and `xz`.

---

## 📦 `zip` and `unzip`

### 🔐 Unzip a password-protected archive
```bash
unzip -P password secure.zip
```
## Create a .zip archive with maximum compression
```bash
zip -9 archive.zip file.txt
```

# tar – Archive Multiple Files/Directories
## Create a .tar.bz2 compressed archive
```bash
tar -cjvf archive.tar.bz2 directory/
```

# bzip2 – Compress Individual Files
## Compress a single file using bzip2
```bash
bzip2 file.txt
```

# xz – High-Ratio Compression
## Compress a file with default settings
```bash
xz file.txt

```

## Compress with maximum compression (-9e)
```bash
xz -9e file.txt

```
