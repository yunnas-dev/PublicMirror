# 云纳 Helm Charts 仓库

<div align="center">
  <img src="docs/images/logo.png" alt="云纳Logo" width="200"/>
  <p><strong>让应用部署触手可得</strong></p>
  
  [![Releases](https://img.shields.io/github/v/release/jianzhis/PublicMirror)](https://github.com/jianzhis/PublicMirror/releases)
  [![License](https://img.shields.io/github/license/jianzhis/PublicMirror)](LICENSE)
  [![Charts](https://img.shields.io/badge/Charts-20+-blue)](charts/stable)
</div>

## 简介

云纳Helm Charts仓库是[云纳平台](https://yunna.net)的官方Chart仓库，提供经过严格测试和验证的Kubernetes应用部署模板。我们致力于通过标准化的Helm Charts简化应用部署流程，让用户专注于应用本身而不是复杂的运维工作。

## 快速开始

### 添加仓库

```bash
# 添加云纳Chart仓库
helm repo add yunna https://jianzhis.github.io/PublicMirror/main

# 更新仓库
helm repo update

# 查看可用的Charts
helm search repo yunna
```

### 安装Chart

```bash
# 安装特定的Chart
helm install my-release yunna/<chart-name>

# 例如安装MySQL
helm install my-mysql yunna/mysql
```

## Chart 列表

我们提供以下类别的应用：

### 数据库
- [MySQL](charts/stable/mysql) - 流行的开源关系型数据库
- [PostgreSQL](charts/stable/postgresql) - 功能强大的开源对象关系数据库

### 开发工具
- [Code Server](charts/stable/codeserver) - 基于浏览器的VS Code
- [Adminer](charts/stable/adminer) - 数据库管理工具

### 监控工具
- [Uptime Kuma](charts/stable/uptimekuma) - 网站监控工具

[查看所有Charts](charts/stable)

## 参与贡献

我们欢迎并感谢任何形式的贡献！

### 开发者计划

参与云纳Charts开发可获得：

- 积分奖励
  - 提交新Chart: 500积分
  - 完善文档: 100积分
  - 修复Bug: 200积分

- 开发者权益
  - 专属技术支持
  - 免费服务时长
  - 社区荣誉标识

查看[贡献指南](docs/CONTRIBUTING.md)了解更多。

## 文档

- [Chart开发规范](docs/charts/STANDARDS.md)
- [Chart审核指南](docs/charts/REVIEW_GUIDELINES.md)
- [快速入门指南](docs/GETTING_STARTED.md)

## 社区支持

- [创建Issue](https://github.com/jianzhis/PublicMirror/issues/new/choose)
- [加入讨论](https://github.com/jianzhis/PublicMirror/discussions)
- 联系我们：support@yunna.net

## 许可证

本项目采用 [Apache 2.0](LICENSE) 许可证。

## 相关资源

- [云纳官网](https://yunna.net)
- [文档中心](https://docs.yunna.net)
- [博客](https://blog.yunna.net)

---

<div align="center">
  <p>由 <a href="https://yunna.net">云纳</a> 倾力打造</p>
  <p>让云原生应用部署更简单</p>
</div>