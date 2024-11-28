{{- define "mysql.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "mysql.name" -}}
mysql
{{- end -}}

{{- define "mysql.labels" -}}
app.kubernetes.io/name: {{ include "mysql.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{- define "mysql.selectorLabels" -}}
app.kubernetes.io/name: {{ include "mysql.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}