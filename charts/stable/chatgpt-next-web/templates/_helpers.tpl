{{/*
Generate the fullname of the release, limiting to 63 characters
*/}}
{{- define "chatgpt-next-web.fullname" -}}
{{- printf "%s-%s" .Release.Name "chatgpt-next-web" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate the name of the chart
*/}}
{{- define "chatgpt-next-web.name" -}}
chatgpt-next-web
{{- end -}}

{{/*
Generate common labels for the chart
*/}}
{{- define "chatgpt-next-web.labels" -}}
app.kubernetes.io/name: {{ include "chatgpt-next-web.name" . }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | quote }}
{{- end -}}