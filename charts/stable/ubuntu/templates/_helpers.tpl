{{/* 
Generate the full name of the release
*/}}
{{- define "ubuntu.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "ubuntu.name" -}}
ubuntu
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "ubuntu.labels" -}}
app.kubernetes.io/name: {{ include "ubuntu.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "ubuntu.selectorLabels" -}}
app.kubernetes.io/name: {{ include "ubuntu.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}