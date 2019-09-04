# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 域名绑定

请在域名绑定之前，先完成**域名解析**工作，并确认解析成功。  

Parse Server 域名绑定操作步骤：

1. 使用 SSH 连接云服务器，运行如下一条命令：
   ``` shell
   wget https://raw.githubusercontent.com/Websoft9/ansible-Parse-Server/master/script/parse-set-domain.sh && chmod +x parse-set-domain.sh &&./parse-set-domain.sh
   ```
2. 根据提示输入两个不同的域名，回车
   ```   
   Input Parse Server Domain: parseserver.websoft9.com
   Input Parse Dashboard Domain: parsedashboard.websoft9.com
   ```
3. 如果域名格式没有问题，会得到成功提示"Configure Done!"
4. 绑定完成

## 域名修改

修改域名不同于绑定域名，请严格参考下面的步骤：

1. 使用 SFTP 工具连接云服务器
2. 修改 */etc/nginx/conf.d/default.conf* 文件中两个域名信息
3. 修改 */etc/parse-server/parse-dashboard.json* 文件中的域名信息
4. 重启服务后生效
   ```
   sudo systemctl restart parse-dashboard
   sudo systemctl restart parse-server
   sudo systemctl restart nginx
   ```
## 修改 Parse Dashboard 账号密码

Parse Dashboard的账号密码存在它的配置文件中，修改步骤如下： 

1. 通过 SSH 工具连接到云服务器
2. 编辑 * /etc/parse-server/parse-server.json*，修改其中的 **users** 项
   ```
    "users": [
    {
      "user":"admin",
      "pass":"admin"
    } ]
   ```
3. 重启 Parse Dashboard 服务后生效
   ```
   systemctl restart parse-dashboard
   ```