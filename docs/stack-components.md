# Parameters

The deployment package contains Parse Server, Parse Dashboard and a sequence software (referred to as "components") required for them to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

### Parse Server

Parse Server  installation directory: */usr/lib/node_modules/parse-server*  
Parse Server  configuration file: */etc/parse-server/parse-server.json*  
Parse Server  logs directory: */var/log/parse-server*  

> The database connection information is in the Parse Server configuration file, once you have changed the database you should change the configuration also

### Parse Dashboard

Parse Dashboard  installation directory: */usr/lib/node_modules/parse-server*  
Parse Dashboard  configuration file: */etc/parse-server/parse-server.json*  
Parse Dashboard  logs: *you can view the logs on the Parse Dashboard Console*  

### Node.js

NPM directory: */usr/lib/node_modules/npm*  
NPM Module global directory: */usr/lib/node_modules/npm/node_modules*  
Node.js configuration file: */usr/include/node/config.gypi*

### Nginx

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*  
Nginx main configuration file: */etc/nginx/nginx.conf*  
Nginx logs file: */var/log/nginx/*


### MongoDB

MongoDB data directory: */data/mongo*   
MongoDB configuration file: */etc/mongod.conf*   
MongoDB log file: */var/log/mongodb/mongod.log*  

MongoDB Web Management URL: *http://Internet IP:9091*, get credential from [Username and Password](/stack-accounts.md)


## Ports

These Ports is need when use Parse Server, refer to [Safe Group Setting on Cloud Console](https://support.websoft9.com/docs/faq/tech-instance.html)

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| HTTP | 80 | HTTP requests for Parse Server  | Required |
| HTTPS | 443 | HTTPS requests Parse Server  | Optional |
| MongoDB | 20217 | Remote connect MongoDB | Optional |
| adminMongo on Docker | 9090 | Web managment GUI for MongoDB | Optional |

## Version

You can see the version from product page of Marketplace. However, after being deployed to your server, the components will be automatically updated, resulting in a certain change in the version number. Therefore, the exact version number should be viewed by running the command on the server:

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