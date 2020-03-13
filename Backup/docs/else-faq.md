# FAQ

#### What the different between Parse and Parse Server?

Parse is a Serverless Paas which was stop opretion now. Parse Server is opensoure project to replace Parse and you can deploy it on your Cloud Server

#### How to modify the Parse Dashboard's credentials?

Refer to [modify the Parse Dashboard's password](/solution-more.md#modify-parse-dashboard-credentials) 

#### What SDKs does Parse Server provide?

IOS, Android, JavaScript, .NET + Xamarin, PHP, Arduino, Embedded C等 

#### Where is the database connection configuration of Parse Server?

Database configuration information in *parse-server.json* in the [Parse Server installation directory](/stack-components.md#parse-server)

#### Where is the database connection configuration of Parse Dashboard? 

Parse Dashboard not need Database, its use text file for data storage

#### If there is no Domain name, can I deploy Parse Server ?

No, you should bind Domain name fist

#### What is the password for the database root user?

The password is stored in the server related file: `/credentials/password.txt`

#### Is there a web-base GUI database management tools for MongoDB?

Yes, adminMongo is on it, visit by http://Internet IP:9091

#### How to disable adminMongo access?

Disable port 9091 and 27017 of the server security group

#### Is it possible to modify the source path of Parse Server ?

No, you can't modify it

#### What's the difference between Deployment and Installation?

- Deployment is a process of installing and configuring a sequence of software in sequence in a different order, which is a complex system engineering.  
- Installation is the process of starting the initial wizard after the application is prepared.  
- Installation is simpler than deployment. 

#### What's Cloud Platform?

Cloud platform refers to platform manufacturers that provide cloud computing services, such as: **Azure, AWS, Alibaba Cloud, HUAWEI CLOUD, Tencent Cloud**, etc.

#### What is the difference between Instance, Cloud Server, Virtual Machine, ECS, EC2, CVM, and VM?

No difference, just the terminology used by different manufacturers, actually cloud servers