{{/* 
Generate the full name of the release 
Usage: {{ include "uptime-kuma.fullname" . }}
*/}}
{{- define "uptime-kuma.fullname" -}}
{{- printf "%s-%s" .Release.Name "uptime-kuma" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/* 
Generate the name of the chart 
Usage: {{ include "uptime-kuma.name" . }}
*/}}
{{- define "uptime-kuma.name" -}}
uptime-kuma
{{- end }}

{{/* 
Generate common labels 
Usage: {{ include "uptime-kuma.labels" . }}
*/}}
{{- define "uptime-kuma.labels" -}}
app.kubernetes.io/name: {{ include "uptime-kuma.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}