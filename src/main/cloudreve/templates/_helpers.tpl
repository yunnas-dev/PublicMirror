{{/*
Expand the name of the chart.
*/}}
{{- define "cloudreve.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Expand the full name of the chart.
*/}}
{{- define "cloudreve.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- include "cloudreve.name" . }}-{{ .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "cloudreve.labels" -}}
helm.sh/chart: {{ include "cloudreve.chart" . }}
app.kubernetes.io/name: {{ include "cloudreve.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "cloudreve.selectorLabels" -}}
app.kubernetes.io/name: {{ include "cloudreve.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Chart metadata as a single string.
*/}}
{{- define "cloudreve.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}