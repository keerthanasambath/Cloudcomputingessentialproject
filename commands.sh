mkdir /ftp_data
mkdir /ftp_data/admin /ftp_data/users /ftp_data/guests
touch /ftp_data/admin/documents.txt /ftp_data/admin/images.jpg /ftp_data/admin/backups.tar.gz
touch /ftp_data/users/documents.txt /ftp_data/users/images.jpg /ftp_data/users/backups.tar.gz
touch /ftp_data/guests/documents.txt /ftp_data/guests/images.jpg /ftp_data/guests/backups.tar.gz
mv /ftp_data/users/data.txt /ftp_data/admin/
mv /ftp_data/guests/temp_file.txt /ftp_data/guests/guest_data.txt
ls /ftp_data/guests
cd /ftp_data
ls admin/
ls users/
ls guests/
touch /ftp_data/ftp_config.txt
chmod 644 /ftp_data/ftp_config.txt
chmod 600 /ftp_data/ftp_config.txt  # Only admin has write access
ls -l /ftp_data/ftp_config.txt
cp -r /ftp_data/users /ftp_data/ftp_backup
ls /ftp_data/ftp_backup
rm /ftp_data/users/old_file.txt
rmdir /ftp_data/guests/old_data
#!/bin/bash
for i in {1..100}
do
    touch /ftp_data/users/file_$i.txt
done
chmod +x generate_files.sh
./generate_files.sh
history | tail -n 20
history | grep -i ftp
uptime
top  # Monitor CPU and memory usage
df -h  # Check disk space usage
ls -l /ftp_data
ls -l /ftp_data/ftp_config.txt
ping -c 4 <remote_server_or_client_IP>
find /ftp_data -name "vsftpd.conf"
grep "anonymous_enable" /etc/vsftpd.conf
mkdir /ftp_data/user1_files /ftp_data/user2_files
chown user1:user1 /ftp_data/user1_files
chown user2:user2 /ftp_data/user2_files
chmod 700 /ftp_data/user1_files
chmod 700 /ftp_data/user2_files
#!/bin/bash
find /ftp_data -type d -empty -exec rmdir {} \;
chmod +x cleanup_empty_dirs.sh
./cleanup_empty_dirs.sh
du -sh /ftp_data/* | sort -rh
find /ftp_data -type f -exec du -sh {} + | sort -rh
find /ftp_data -name "*.txt"
find /ftp_data/users -name "*.txt"
tar -czf /ftp_data/ftp_backup.tar.gz /ftp_data/ftp_backup
tar -tf /ftp_data/ftp_backup.tar.gz

git and push

git init
git add .
git commit -m "Initial commit of FTP server management project"
git remote add origin <repository_url>
git push -u origin master

