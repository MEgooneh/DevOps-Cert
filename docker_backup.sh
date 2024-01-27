#!/bin/bash

# Docker Volumes Backup Script

backup_dir="/path/to/backup/directory"
timestamp=$(date +%Y%m%d_%H%M%S)

# Create a backup of all Docker volumes
docker run --rm -v $(docker volume ls -q):/data -v $backup_dir:/backup ubuntu tar czvf /backup/docker_backup_$timestamp.tar.gz -C /data .

# Cleanup old backups (adjust retention policy as needed)
find $backup_dir -type f -name 'docker_backup_*' -mtime +7 -exec rm -f {} \;
