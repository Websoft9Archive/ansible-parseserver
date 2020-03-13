# Parse Server自动化安装与部署

本项目是基于 Ansible 编写的 Parse Server 自动化安装脚本，只要熟悉 Ansible，便可以将 Parse Server 用无人值守的方式部署到你的服务器。本项目是开源项目，支持MIT开源协议。如果您不熟悉Ansible的使用，您可以直接使用我们在公有云上提供的 [相关镜像](https://apps.websoft9.com/parse)。

## 操作系统

目前仅支持Ubuntu16.x以上

## 服务器配置要求

最低2G内存，10G系统盘空间，否则无法安装

## 组件

请阅读[参数表](/docs/zh/stack-components.md)

## 如何安装最新版本？

本项目采用 NPM 安装 Parse Server 和 Parse Dashboard, 能保证每次部署为最新版本

## Ansible安装指南

支持root用户、普通用户（+su权限提升）等两种账号模式，也支持密码和秘钥对登录方式。

## 管理指南

[中文](https://support.websoft9.com/docs/parse/zh) | [English](https://support.websoft9.com/docs/parse)
