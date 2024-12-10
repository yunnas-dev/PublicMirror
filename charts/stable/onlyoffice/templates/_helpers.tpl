{{- define "onlyoffice-documentserver.fullname" -}}
{{ .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "onlyoffice-documentserver.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{- define "onlyoffice-documentserver.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
