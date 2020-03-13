# FAQ

#### Parse 与 Parse Server 有什么区别？

Parse是一个在线的 Serverless 托管平台，现已停止运营。Parse Server 是开源 Parse 的功能，由用户自行下载部署到服务器的开源项目。

#### 如何修改Parse Dashboard 的密码？

修改 Parse Dashboard 的密码（[参考](/zh/solution-more.md#修改-parse-dashboard-账号密码)）

#### Parse Server 提供了哪些SDK？

IOS, Android, JavaScript, .NET + Xamarin, PHP, Arduino, Embedded C等 

#### Parse Server 数据库连接配置信息在哪里？

数据库配置信息在Parse Server 安装目录下的 *parse-server.json* 中，[查阅安装目录路径](/zh/stack-components.md#parse-server)

#### Parse Dashboard 数据库连接配置信息在哪里？ 

Parse Dashboard 不需要数据库支持，数据存储在文本文件中

#### 如果没有域名是否可以部署 Parse Server ？

不可以，必须[绑定域名](/zh/solution-more.md#域名绑定)

#### 数据库 root 用户对应的密码是多少？

密码存放在服务器相关文件中：`/credentials/password.txt`

#### 是否有可视化的数据库管理工具？

有，内置adminMongo，访问地址：http://服务器公网IP:9090

#### 如何禁止 adminMongo 访问？

关闭服务器安全组的9090端口即可禁止

#### 是否可以修改Parse Server 的源码路径？

不支持修改

#### 部署和安装有什么区别？

部署是将一序列软件按照不同顺序，先后安装并配置到服务器的过程，是一个复杂的系统工程。  
安装是将单一的软件拷贝到服务器之后，启动安装向导完成初始化配置的过程。  
安装相对于部署来说更简单一些。 

#### 云平台是什么意思？

云平台指提供云计算服务的平台厂家，例如：Azure,AWS,阿里云,华为云,腾讯云等

#### 实例，云服务器，虚拟机，ECS，EC2，CVM，VM有什么区别？

没有区别，只是不同厂家所采用的专业术语，实际上都是云服务器