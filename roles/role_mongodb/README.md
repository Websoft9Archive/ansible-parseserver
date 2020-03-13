Ansible Role: mongodb
=========

本 Role 在CentOS或者Ubuntu服务器上安装和配置 MongoDB。

## Requirements

运行本 Role，请确认符合如下的必要条件：

| **Items**      | **Details** |
| ------------------| ------------------|
| Operating system | CentOS7.x Ubuntu18.04 AmazonLinux|
| Python 版本 | Python2  |
| Python 组件 |    |
| Runtime |  |


## Related roles

本 Role 在语法上不依赖其他 role 的变量，但程序运行时需要确保已经运行：common。以 MongoDB 为例：

```
  roles:
   - {role: role_common, tags: "role_common"}   
   - {role: role_cloud, tags: "role_cloud"}
   - {role: role_mongodb, tags: "role_mongodb"}
```


## Variables

本 Role 主要变量以及使用方法如下：

| **Items**      | **Details** | **Format**  | **是否初始化** |
| ------------------| ------------------|-----|-----|
| mongodb_version | [ 10.1, 10.2, 10.3, 10.4 ] | 字符串 |是|
| mongodb_root_password | [ "123456"] | 字符串 |是|
| mongodb_remote | [ "true", "false" ] | 字符串 |是|

注意：
1. mongodb_version, mongodb_remote  的值在 mongodb.yml 中由用户选择输入；
2. mongodb_root_password 的值在主变量文件[main.yml](https://github.com/Websoft9/ansible-mongodb/blob/master/vars/main.yml)中定义。


## Example

```
- name: MongoDB
  hosts: all
  become: yes
  become_method: sudo 
  vars_files:
    - vars/main.yml 

  roles:
   - {role: role_common, tags: "role_common"}   
   - {role: role_cloud, tags: "role_cloud"}
   - {role: role_mongodb, tags: "role_mongodb"}
   - {role: role_docker, tags: "role_docker", when: phpmyadmin_install_docker}
   - {role: role_docker_phpmyadmin, tags: "role_docker_phpmyadmin", when: phpmyadmin_install_docker}
   - {role: role_init_password, tags: "role_init_password"}
   - {role: role_end, tags: "role_end"} 
```

## FAQ


