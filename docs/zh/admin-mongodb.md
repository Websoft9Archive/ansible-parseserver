# MongoDB

Parse Server 预装包中内置 MongoDB 及可视化数据库管理工具 `adminMongo` ，使用请参考如下步骤：

1. 登录云控制台，[开启服务器安全组9090和47017端口](https://support.websoft9.com/docs/faq/zh/tech-instance.html)
2. 本地浏览器 Chrome 或 Firefox 访问：*http://服务器公网IP:9090*，进入adminMongo
  ![adminMongo界面](https://libs.websoft9.com/Websoft9/DocsPicture/en/mongodb/adminmongo/adminmogo-sconnect-websoft9.png)
3. 参考下面的范例，新建一个【Connection】。其中的IP地址是服务器公网IP，数据库账号[此处获取](/zh/stack-accounts.md)
   ```
   # 连接到config数据库
   mongodb://root:1cTFecwTEs@40.114.115.58

   # 连接到admin数据库
   mongodb://root:1cTFecwTEs@40.114.115.58/admin

   # 连接到parse数据库
   mongodb://parse:AxXFcV5zSz@40.114.115.58/parse
   ```
4. 连接成功，开始管理 Parse库
  ![adminMongo parse](https://libs.websoft9.com/Websoft9/DocsPicture/en/mongodb/adminmongo/adminmogo-parse-websoft9.png)

5. 数据库操作完成后，务必参考下图**删除 Connection**
  ![adminMongo](https://libs.websoft9.com/Websoft9/DocsPicture/en/mongodb/adminmongo/adminmogo-delconnect-websoft9.png)

> 阅读Websoft9提供的 [《MongoDB教程》](https://support.websoft9.com/docs/mongodb/zh/admin-adminmongo.html) ，掌握更多的 MongoDB 实用技能：连接字符串范例、修改密码、导入/导出数据、创建用户、开启或关闭远程访问、日志配置等 