{{/*
  定义 redis 全名（可以在不同的资源中复用）
*/}}
{{- define "redis.fullname" -}}
{{- .Release.Name | trunc 32 | trimSuffix "-" -}}
{{- end -}}

{{/*
  定义 redis 的标签，用于在部署、服务等资源中复用
*/}}
{{- define "redis.labels" -}}
app.kubernetes.io/name: {{ include "redis.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
  定义 redis 的选择器标签，用于 Deployment 和 StatefulSet 的选择器
*/}}
{{- define "redis.selectorLabels" -}}
app.kubernetes.io/name: {{ include "redis.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
  定义 redis 的名称（用于复用在多个地方，如服务名称、部署名称等）
*/}}
{{- define "redis.name" -}}
redis
{{- end -}}
