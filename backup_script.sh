#!/bin/bash

# Source directory (the directory you want to back up)
SOURCE_DIR="/path/to/source"

# Backup directory (where the backup will be stored)
BACKUP_DIR="/path/to/backup"

# Current timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Backup file name with timestamp
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

# Full path to the backup file
FULL_BACKUP_PATH="$BACKUP_DIR/$BACKUP_FILE"

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create a compressed tar archive of the source directory
tar -czf "$FULL_BACKUP_PATH" -C "$SOURCE_DIR" .

# Check if the tar command was successful
if [ $? -eq 0 ]; then
    echo "Backup completed successfully!"
    echo "Backup saved to: $FULL_BACKUP_PATH"
else
    echo "Backup failed!"
fi
#MADE BY MAHAD REHAN
