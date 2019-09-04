# 服务启停

使用由Websoft9提供的Parse Server 部署方案，可能需要用到的服务如下：

### Parse Server 

```shell
sudo systemctl start parse-server
sudo systemctl stop parse-server
sudo systemctl restart parse-server
sudo systemctl status parse-server
```

### Parse Dashboard

```shell
sudo systemctl start parse-dashboard
sudo systemctl stop parse-dashboard
sudo systemctl restart parse-dashboard
sudo systemctl status parse-dashboard
```

### Nginx

```shell
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl status nginx
```

### MySQL

```shell
sudo systemctl start mysql
sudo systemctl stop mysql
sudo systemctl restart mysql
sudo systemctl status mysql
```

