# Backup Script

This is a Bash script to automate backups of a directory. It compresses the backup into a `.tar.gz` file and optionally uploads it to a cloud service using `rclone`.

## Features
- Compresses the backup into a `.tar.gz` file.
- Excludes specific files/folders from the backup.
- Optionally uploads the backup to a cloud service using `rclone`.
- Sends Pushbullet notifications.
- Removes the local backup after upload.

## Requirements
- **Bash**: The script is written in Bash.
- **tar**: Used for compressing the backup.
- **rclone** (optional): For uploading the backup to a cloud service.
- **Pushbullet API key** (optional): For receiving notifications.

## Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/backup-script.git
   cd backup-script
