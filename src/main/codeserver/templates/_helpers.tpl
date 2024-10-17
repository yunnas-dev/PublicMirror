{{/*
  This template defines common labels for the code-server chart.
*/}}
{{- define "code-server.labels" -}}
app.kubernetes.io/name: {{ include "code-server.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
  Define the full name of the chart, which includes the release name.
*/}}
{{- define "code-server.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{/*
  Define the base name of the chart.
*/}}
{{- define "code-server.name" -}}
{{ .Chart.Name }}
{{- end }}