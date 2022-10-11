#!/bin/bash

ansible-playbook -i AutoBackup/inventory AutoBackup/backup_mikrotik.yml

echo "Git Push:"
cd ~/AutoBackup/backups/
git add .
git commit -m "$(date +%D~%T)"
git push -u origin master
