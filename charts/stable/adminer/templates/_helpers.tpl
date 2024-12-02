{{/*
Generate the fullname of the release, limiting to 63 characters
*/}}
{{- define "adminer.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate the name of the chart
*/}}
{{- define "adminer.name" -}}
adminer
{{- end -}}

{{/*
Generate common labels for the chart
*/}}
{{- define "adminer.labels" -}}
app.kubernetes.io/name: {{ include "adminer.name" . }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | quote }}
createdBy: "Apps"
{{- end -}}