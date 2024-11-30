# 云纳 Helm Chart 开发规范 v1.0

## 目录结构规范

```
charts/stable/[chart-name]/
├── Chart.yaml          # Chart 基本信息
├── README.md          # 使用文档
├── values.schema.json  # 值验证模式
├── values.yaml        # 默认配置值
├── NOTES.txt          # 安装后提示信息
└── templates/         # 模板目录
    ├── deployment.yaml     # 必需，应用部署配置
    ├── service.yaml       # 必需，服务配置
    ├── pvc.yaml          # 可选，持久化配置
    ├── configmap.yaml    # 可选，配置项
    ├── secret.yaml       # 可选，敏感信息
    ├── ingress.yaml      # 可选，入口配置
    └── _helpers.tpl      # 必需，通用函数
```

## Chart.yaml 规范

```yaml
apiVersion: v2                      # 必需，使用v2版本
name: [chart-name]                  # 必需，小写字母，不含空格
description: |                      # 必需，详细描述，支持多行
  [应用描述，建议中文]
version: 0.1.0                      # 必需，遵循语义化版本
appVersion: "1.0"                   # 必需，应用版本
home: https://example.com           # 必需，应用主页
sources:                           # 必需，源码仓库
  - https://github.com/example/repo
maintainers:                       # 必需，维护者信息
  - name: "云纳平台"
    email: "support@yunna.net"
annotations:                       # 必需，云纳平台分类
  yunna.net/category: "Database"   # 英文分类
  yunna.net/category-zh: "数据库"   # 中文分类
  yunna.net/difficulty: "beginner" # 使用难度：beginner/intermediate/advanced
keywords:                         # 必需，搜索关键词
  - database
  - mysql
```

## values.yaml 规范

1. 基础配置：
```yaml
# 全局配置
global:
  imageRegistry: "registry-2.yunna.net"  # 镜像仓库地址
  storageClass: "local"                  # 存储类

# 基础配置
replicaCount: 1                          # 副本数

# 镜像配置
image:
  repository: example/app                # 镜像名称
  tag: "1.0"                            # 镜像标签
  pullPolicy: IfNotPresent              # 拉取策略
```

2. 资源配置：
```yaml
# 资源限制
resources:
  limits:
    cpu: "1000m"                        # CPU限制
    memory: "1024Mi"                    # 内存限制
  requests:
    cpu: "500m"                         # CPU请求
    memory: "512Mi"                     # 内存请求

# 持久化存储
persistence:
  enabled: true                         # 是否启用
  size: "10Gi"                         # 存储大小
  storageClass: "local"                # 存储类
```

## values.schema.json 规范

1. 基本结构：
```json
{
  "$schema": "http://json-schema.org/schema#",
  "type": "object",
  "properties": {
    "参数名": {
      "type": "类型",
      "title": "中文标题",
      "description": "参数描述",
      "default": "默认值"
    }
  }
}
```

2. 必需字段：
- title：中文参数名称
- type：参数类型
- description：参数说明（可选）
- default：默认值
- required：必填字段列表

## 模板文件规范

1. deployment.yaml：
- 必须包含资源限制
- 必须设置健康检查
- 必须使用标准标签
- 必须处理环境变量

2. service.yaml：
- 必须设置合适的服务类型
- 端口命名需要有意义
- 必须使用标准标签

3. _helpers.tpl：
- 必须包含name、fullname函数
- 必须包含标准标签定义
- 函数命名需要规范

## README.md 规范

1. 必需章节：
- 简介：应用描述
- 前置条件：运行要求
- 安装说明：部署步骤
- 参数说明：配置详解
- 使用说明：基本用法
- 注意事项：特殊说明

2. 内容要求：
- 使用中文编写
- 示例明确具体
- 提供常见问题解答

## NOTES.txt 规范

1. 必需内容：
- 部署成功提示
- 访问方式说明
- 后续步骤指引
- 注意事项提醒

## 最佳实践

1. 版本控制：
- 遵循语义化版本
- 记录版本变更
- 保持向后兼容

2. 安全性：
- 默认配置安全
- 敏感信息加密
- 最小权限原则

3. 可维护性：
- 代码注释完整
- 配置项文档化
- 错误处理完善

4. 资源管理：
- 合理设置限制
- 优化资源使用
- 提供伸缩建议

## 提交流程

1. 开发阶段：
- 创建功能分支
- 完成代码开发
- 本地测试验证

2. 测试阶段：
- 提交测试分支
- 自动化测试
- 人工复核

3. 发布阶段：
- 合并主分支
- 版本标签
- 更新文档

## 审核标准

1. 基础要求：
- 文件结构完整
- 命名规范统一
- 版本号正确

2. 功能要求：
- 应用可正常部署
- 配置项可正常使用
- 文档完整准确

3. 质量要求：
- 代码规范整洁
- 错误处理完善
- 性能表现良好