#!/bin/sh

# Define the backup file and target file
BACKUP_FILE='/data/bryan/hosts.bak'
TARGET_FILE='/etc/hosts'

# Check if the backup file exists
if [ -f "$BACKUP_FILE" ]; then
    # If it exists, replace the target file with the backup file
    cp -f "$BACKUP_FILE" "$TARGET_FILE"
else
    echo "Backup file $BACKUP_FILE does not exist."
fi
