{{/*
Template App 完整名称
*/}}
{{- define "template-app.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Template App 名称
*/}}
{{- define "template-app.name" -}}
template-app
{{- end -}}

{{/*
通用标签
*/}}
{{- define "template-app.labels" -}}
app.kubernetes.io/name: {{ include "template-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}