{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "kali.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "kali.name" -}}
kali
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "kali.labels" -}}
app.kubernetes.io/name: {{ include "kali.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: "{{ .Chart.AppVersion }}"
helm.sh/chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "kali.selectorLabels" -}}
app.kubernetes.io/name: {{ include "kali.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}