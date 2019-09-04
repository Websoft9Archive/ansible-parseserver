# More

Each of the following solutions has been proven to be effective and We hope to be helpful to you.

## Domain binding

Please complete the **domain name resolution** work before the domain name is bound, and confirm that the resolution is successful.

Parse Server domain name binding steps:

1. Use SSH to connect your Cloud Server and run the following command
   ``` shell
   wget https://raw.githubusercontent.com/Websoft9/ansible-Parse-Server/master/script/parse-set-domain.sh && chmod +x parse-set-domain.sh &&./parse-set-domain.sh
   ```
2. Enter two different domain names as prompted
   ```   
   Input Parse Server Domain: parseserver.websoft9.com
   Input Parse Dashboard Domain: parsedashboard.websoft9.com
   ```
3. If there is no problem with the domain name format, you will get a success message "Configure Done!"
4. Domain binding completed

## 域名修改

Modifying a domain name is different from binding a domain name. Please strictly refer to the following steps:

1. Using SFTP to connect Cloud Server
2. Modify the the two Domain name in the file */etc/nginx/conf.d/default.conf* 
3. Modify the the one Domain name in the file */etc/parse-server/parse-dashboard.json* 
4. Restart Service like below
   ```
   sudo systemctl restart parse-dashboard
   sudo systemctl restart parse-server
   sudo systemctl restart nginx
   ```
## Modify Parse Dashboard Credentials

Parse Dashboard's credentials is in its configuration file, refer to the following steps to modify it

1. Use SSH or SFTP tool to connect Cloud Server
2. Edit * /etc/parse-server/parse-server.json* file and modify **users** item
   ```
    "users": [
    {
      "user":"admin",
      "pass":"admin"
    } ]
   ```
3. Restart Parse Dashboard Service
   ```
   systemctl restart parse-dashboard
   ```