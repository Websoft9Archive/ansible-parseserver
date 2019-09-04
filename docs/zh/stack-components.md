# 参数

本预装包包含 Parse Server,Parse Dashboard 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

### Parse Server 

Parse Server  程序目录： */usr/lib/node_modules/parse-server*  
Parse Server  配置文件： */etc/parse-server/parse-server.json*  
Parse Server  日志目录： */var/log/parse-server*  

> Parse Server 配置文件中包含数据库连接信息，更改了 MongoDB 账号密码，此处也需要对应修改

### Parse Dashboard

Parse Dashboard  程序目录： */usr/lib/node_modules/parse-server*  
Parse Dashboard  配置文件： */etc/parse-server/parse-server.json*  
Parse Dashboard  日志文件： *直接在 Parse Dashboard 面板中查看*  


### Node.js

NPM 程序目录：*/usr/lib/node_modules/npm*  
NPM 模块全局安装路径：*/usr/lib/node_modules/npm/node_modules*  
Node 配置文件：*/usr/include/node/config.gypi*

### Nginx

Nginx 虚拟主机配置文件：*/etc/nginx/conf.d/default.conf*  
Nginx 主配置文件： */etc/nginx/nginx.conf*  
Nginx 日志文件： */var/log/nginx/*

### MongoDB

MongoDB 存储目录：*/data/mongo*   
MongoDB 配置文件：*/etc/mongod.conf*   
MongoDB 日志目录：*/var/log/mongodb/mongod.log*  
  
MongoDB 可视化管理地址: *http://服务器公网IP:9090*，用户名和密码请见 [账号密码](/zh/stack-accounts.md) 章节。


## 端口号

下面是您在使用本镜像过程中，需要用到的端口号，请通过 [云控制台安全组](https://support.websoft9.com/docs/faq/zh/tech-instance.html)进行设置

| 名称 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| HTTP | 80 | 通过http访问Parse Server, Parse Dashboard | 必须 |
| HTTPS | 443 | 通过https访问Parse Server, Parse Dashboard   | 可选 |
| MongoDB | 27017 | 远程连接MySQL | 可选 |
| adminMongo on Docker | 9090 | 可视化管理MongoDB | 可选 |

## 版本号

组件版本号可以通过云市场商品页面查看。但部署到您的服务器之后，组件会自动进行更新导致版本号有一定的变化，故精准的版本号请通过在服务器上运行命令查看：

```shell
# Nginx Version
nginx -v

# Node.js Verison
node --version

# MongoDB Verison
mongo --version

# Dokcer:
docker --version
```