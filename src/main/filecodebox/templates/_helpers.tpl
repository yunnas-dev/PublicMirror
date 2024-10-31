{{/*
Generate the fullname of the release, limiting to 63 characters
*/}}
{{- define "filecodebox.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate the name of the chart
*/}}
{{- define "filecodebox.name" -}}
filecodebox
{{- end -}}

{{/*
Generate common labels for the chart
*/}}
{{- define "filecodebox.labels" -}}
app.kubernetes.io/name: {{ include "filecodebox.name" . }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | quote }}
createdBy: "Apps"
{{- end -}}