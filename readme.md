# 云纳应用云平台 Helm Charts

欢迎使用云纳应用云平台，这是一个集成了多个常用 Helm Charts 的项目，旨在简化 Kubernetes 应用的部署和管理。

## 介绍

云纳应用云平台包含以下 Helm Charts：
- **MySQL**: 一个高性能的关系数据库管理系统。
- **Nginx**: 一个高效的 HTTP 和反向代理服务器。

## 前提条件

- Kubernetes 1.10+ 版本
- Helm 3.0.0+ 版本

## 安装 Helm Charts

### 安装 MySQL

```sh
helm repo add public-charts https://public-charts.yunna.net
helm repo update
helm install my-mysql-release public-charts/mysql
