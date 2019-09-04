# 初始化安装

在云服务器上部署 Parse Server 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:80** 端口是否开启
3. 在 **域名控制台** 完成两个域名解析，分别对应 Parse Server 和 Parse Dashboard 两个核心模块  
例如：*parseserver.yourdomain.com* 和 *parsedashboard.yourdomain.com* 

## 绑定域名

由于本项目不可以通过IP访问，因此绑定域名操作是能否正常运行本项目的关键。  

请参考 [绑定域名](/zh/solution-more.md#域名绑定) 完成绑定操作。

## Parse Server 安装向导

1. 使用本地电脑的 Chrome 或 Firefox 浏览器访问网址：*http://域名*  就进入了软件的引导首页
![Parse Dashboard 登录](http://libs.websoft9.com/Websoft9/DocsPicture/en/parseserver/ParseServer-loginpage-websoft9.png)

2. 输入账号和密码（[查看](/zh/stack-accounts.md)），登录后的界面如下
![Parse Dashboard 后台界面](http://libs.websoft9.com/Websoft9/DocsPicture/en/parseserver/parse-backend-websoft9.png)

3. 修改 Parse Dashboard 的密码（[参考](/zh/solution-more.md#修改-parse-dashboard-账号密码)）

> 需要了解更多 Parse 的使用，请参考官方文档：[Parse Server Documentation](https://docs.parseplatform.org/)

## 常见问题

#### 浏览器打开IP地址，出现 "error":"unauthorized" ？

本项目不支持IP访问，需要 **[绑定域名](/zh/solution-more.md#域名绑定)** 方可使用

#### 本部署包采用的哪个数据库来存储 Parse Server 数据？

MongoDB