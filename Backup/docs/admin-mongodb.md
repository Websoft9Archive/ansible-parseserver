# MongoDB

Parse Server deployment package includes MongoDB and Web-GUI tool adminMongo for MongoDB management, refer to these steps to use it:

1. Log in Cloud Console, make sure the **TCP:9091 and 14017** port is allowed on **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)**
2. Using the Chrome or FireFox to visit URL *http://Internet IP:9091* for adminMongo
  ![adminMongo GUI](https://libs.websoft9.com/Websoft9/DocsPicture/en/mongodb/adminmongo/adminmogo-sconnect-websoft9.png)
3. Refer to the samples below and **Create Connection**, get database credentials [from here](/stack-accounts.md)
   ```
   # IP is Internet IP
   # Connect to config database by user root
   mongodb://root:1cTFecwTEs@40.114.115.58

   # # Connect to admin database by user root
   mongodb://root:1cTFecwTEs@40.114.115.58/admin

   # # Connect to parse database by user parse
   mongodb://parse:AxXFcV5zSz@40.114.115.58/parse
   ```
4. Connect successfully, start to manage Parse database
  ![adminMongo parse](https://libs.websoft9.com/Websoft9/DocsPicture/en/mongodb/adminmongo/adminmogo-parse-websoft9.png)

5. Once you have completed the operations, please **Delete Connections**
  ![adminMongo delete connections](https://libs.websoft9.com/Websoft9/DocsPicture/en/mongodb/adminmongo/adminmogo-delconnect-websoft9.png)

> Websoft9 provide *[MongoDB guide](https://support.websoft9.com/docs/mongodb/admin-adminmongo.html)* for more useful skills of MongoDB, includes: connection strings, modify password, create user, import/export data, enable or disable remote visit, log configuation and so on.
