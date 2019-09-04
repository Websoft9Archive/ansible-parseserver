### 各组件版本路径等信息



###### nginx version: nginx/1.16.1

 配置文件: `/etc/nginx/nginx.conf` `/etc/nginx/conf.d/default.conf`

端口: 80

服务启停: `systemctl start/stop/restart/status nginx`

日志: `/var/log/nginx`



###### mongod version v4.0.12

配置文件: `/etc/mongod.conf`

存储路径: `/data/mongo`

端口: 27017

服务启停: `systemctl start/stop/restart/status mongod `

日志: `/var/log/mongodb`

###### Docker 19.03.1

配置文件: `/etc/docker/`

服务启停: `systemctl start/stop/restart/status docker`



###### node v10.16.3

node_modules全局目录: `/usr/lib/node_modules`



###### parse-server  3.8.0

程序目录:  `/usr/lib/node_modules/parse-server`

配置文件: `/etc/parse-server/parse-server.json`

日志: `/var/log/parse-server`

服务启停: `systemctl start/stop/restart/status parse-server`



###### parse-dashboard 1.4.3

程序目录:  `/usr/lib/node_modules/parse-dashboard`

配置文件: `/etc/parse-server/parse-dashboard.json`

服务启停: `systemctl start/stop/restart/status parse-dashboard`



ParseServer IP 访问显示 `{"error":"unauthorized"}`

需配置域名使用;需要修改配置域名的配置文件如下:

```
# Nginx 配置
/etc/nginx/conf.d/default.conf

# Parse Dashboard 配置
/etc/parse-server/parse-dashboard.json

# Parse Server配置
/etc/parse-server/parse-server.json
```



用户名/密码: admin/admin

修改密码:修改 /etc/parse-server/parse-dashboard.json配置 users 段 `"user":"admin",` `"pass":"admin"`