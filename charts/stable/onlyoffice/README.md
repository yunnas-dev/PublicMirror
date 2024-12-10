# onlyoffice-documentserver Helm Chart

## 介绍

ONLYOFFICE Document Server 是一个功能强大的在线文档协作工具，支持多人实时编辑。

## 主要功能

- 在线编辑 Word、Excel 和 PowerPoint 文件
- 实时协作和版本控制
- 支持多种文件格式的预览和转换

## 配置参数说明

| 参数名称              | 描述           | 类型    | 默认值                    |
| --------------------- | -------------- | ------- | ------------------------- |
| `replicaCount`        | 副本数量       | integer | 1                         |
| `image.repository`    | 镜像仓库地址   | string  | onlyoffice/documentserver |
| `image.tag`           | 镜像版本       | string  | latest                    |
| `persistence.enabled` | 是否启用持久化 | boolean | true                      |

## 部署步骤

1. 添加仓库 `helm repo add stable https://your-repo-url`
2. 部署 Chart `helm install my-release stable/onlyoffice-documentserver`

## 使用说明

访问服务的 NodePort 或 ClusterIP，启动文档协作服务。

## 故障排除

- 确保持久化存储配置正确。
- 确认环境变量 `SECRET_KEY` 已正确设置。
