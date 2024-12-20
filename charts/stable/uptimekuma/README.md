# 🚀 Uptime-Kuma

![Uptime-Kuma](https://github.com/louislam/uptime-kuma/raw/master/public/images/logo.svg)

## 🛠️ 介绍

**Uptime-Kuma** 是一个功能强大的自托管监控工具，类似于 [Uptime Robot](https://uptimerobot.com/)。它提供了一个直观的用户界面，用于监控您的网站和服务的正常运行时间，确保您能够及时收到任何停机通知。Uptime-Kuma 支持多种监控方式，包括 HTTP(s)、TCP、Ping、DNS 等，且易于安装和配置，非常适合个人和企业使用。

### ⭐ 主要功能

- **🔍 多种监控协议**：支持 HTTP(s)、TCP、Ping、DNS 等多种监控方式。
- **🔔 实时通知**：集成多种通知渠道，如邮件、Slack、Telegram 等，确保您能即时获知服务状态。
- **🖥️ 友好的用户界面**：简洁直观的界面设计，方便配置和查看监控状态。
- **🔒 自托管**：完全控制您的监控数据，保障数据隐私和安全。
- **💪 高可用性**：支持多副本部署，确保监控服务的持续可用。

## ⚙️ 配置参数说明

在部署 Uptime-Kuma 时，您可以通过以下配置参数来定制应用的行为和资源分配。只需在我们的平台上填写这些参数，然后点击部署按钮，系统将自动完成部署过程。

### 配置参数

| 参数名称                   | 描述                                      | 类型   | 默认值     | 示例值    |
|----------------------------|-------------------------------------------|--------|------------|-----------|
| `tag`                      | 镜像标签（版本）。                        | 字符串 | `latest`   | `v1.2.3`  |
| `resources.limits.cpu`     | CPU 限制，例如 `'1000m'`。                | 字符串 | `1000m`    | `500m`    |
| `resources.limits.memory`  | 内存限制，例如 `'1024Mi'`。               | 字符串 | `1024Mi`   | `512Mi`   |
| `resources.requests.cpu`   | CPU 请求，例如 `'500m'`。                 | 字符串 | `500m`     | `250m`    |
| `resources.requests.memory`| 内存请求，例如 `'512Mi'`。                | 字符串 | `512Mi`    | `256Mi`   |
| `env`                      | 环境变量设置。                            | 数组   | See below  | See below |

### 环境变量

| 名称         | 描述                                     | 示例值       |
|--------------|------------------------------------------|--------------|
| `NODE_ENV`   | 设置运行环境。常用值：`production`、`development`。 | `production` |
| `KUMA_DEBUG` | 启用或禁用调试模式。                     | `"false"`    |

## 📦 部署步骤概述

1. **准备配置参数**：
   - 在我们的平台上，进入 Uptime-Kuma 部署页面。
   - 根据上述参数说明，填写各项配置参数。例如，设置镜像标签、资源限制和环境变量。

2. **一键部署**：
   - 完成参数填写后，点击“一键部署”按钮。
   - 系统将根据您提供的配置自动完成 Uptime-Kuma 的部署。

3. **验证部署**：
   - 确保应用已成功部署并运行正常。

4. **访问 Uptime-Kuma**：
   - 通过平台提供的访问链接，登录并开始配置您的监控任务。

## 📈 访问 Uptime-Kuma

部署完成后，您可以通过平台提供的访问链接直接访问 Uptime-Kuma 的用户界面，开始配置和管理您的监控任务。

## 🛠️ 更新配置

若需更新 Uptime-Kuma 的配置或镜像版本，只需修改配置参数并重新执行一键部署，平台将自动应用新的配置。

## 🗑️ 卸载

若需卸载 Uptime-Kuma，只需在平台上选择卸载选项，系统将自动移除所有相关资源。

## 🐞 故障排除

- **应用无法访问**：
  - 确保所有配置参数填写正确，尤其是镜像标签和端口号。
  
- **数据丢失**：
  - 检查持久化存储配置，确保启用了持久化存储并正确配置了存储类。

- **性能问题**：
  - 根据资源请求和限制调整 CPU 和内存配置，以满足应用需求。

## 🤝 贡献

欢迎贡献！请为任何增强功能或错误修复提交 issue 或 pull request。