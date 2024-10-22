# MySQL Helm Chart

本Helm Chart用于安装MySQL，一个流行的开源关系型数据库管理系统（RDBMS），用于通过结构化查询语言（SQL）来管理和组织数据。

## 概述

MySQL广泛应用于各种应用程序，包括Web、移动端和企业系统，用于存储和检索结构化数据。它支持大规模数据库、高可用性和出色的性能，是开发者和组织的首选数据库之一。

## 功能特点

- **关系型数据库**：支持通过表结构存储数据，并支持复杂的查询操作。
- **高可用性**：支持数据复制和备份，确保数据安全。
- **持久化存储**：自动分配持久卷，确保数据可靠存储。
- **MySQL版本**：默认安装MySQL 8.0版本。

## 前提条件

- Kubernetes 1.12+ 版本
- Helm 3.0+ 版本
- 底层基础设施需支持持久卷（Persistent Volume）提供者

## 安装Chart

使用以下命令安装Chart，命名为`my-release`：

```bash
helm install my-release ./mysql
```

此命令将根据默认配置部署一个MySQL实例。有关可配置的参数，请参阅[**配置**](#配置)部分。

## 卸载Chart

使用以下命令卸载`my-release`部署：

```bash
helm uninstall my-release
```

该命令将删除与该发布相关的所有Kubernetes组件，并删除与该发布相关的持久卷。

## 配置

下表列出了MySQL Chart的可配置参数及其默认值：

| 参数                      | 描述                                           | 默认值                  |
|---------------------------|------------------------------------------------|-------------------------|
| `mysqlRootPassword`        | MySQL root用户的密码                           | `rootpassword`          |
| `mysqlUser`                | 自定义用户的用户名                             | `user`                  |
| `mysqlPassword`            | 自定义用户的密码                               | `password`              |
| `mysqlDatabase`            | 要创建的数据库名称                             | `mydb`                  |
| `persistence.enabled`      | 是否启用持久化存储                             | `true`                  |
| `persistence.size`         | 持久卷大小                                     | `8Gi`                   |
| `persistence.storageClass` | 持久卷存储类                                   | `nil`（使用默认存储类）  |
| `service.type`             | 服务类型（`ClusterIP`, `NodePort`, `LoadBalancer`） | `ClusterIP`             |
| `replication.enabled`      | 是否启用主从复制                               | `false`                 |

你可以通过设置这些参数来自定义MySQL的部署。例如：

```bash
helm install my-release ./mysql --set mysqlRootPassword=my-root-password,mysqlUser=my-user,mysqlPassword=my-password,mysqlDatabase=my-database
```

## 持久化

本Chart默认启用了持久化存储。MySQL的数据将会保存在Kubernetes的持久卷中，确保即使Pod被删除或重新调度，数据也不会丢失。

## 访问MySQL

你可以通过以下命令获取MySQL服务的地址：

```bash
kubectl get svc --namespace default my-release-mysql
```

之后可以通过MySQL客户端或其他应用程序连接到数据库。

## 常见问题

- **如何更改数据库密码？**
  你可以在安装时通过设置`mysqlRootPassword`参数来更改root用户的密码。
  
- **如何启用主从复制？**
  设置`replication.enabled=true`即可启用主从复制功能。