{{/*
Generate the fullname of the release, limiting to 63 characters
*/}}
{{- define "halo.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate the name of the chart
*/}}
{{- define "halo.name" -}}
halo
{{- end -}}

{{/*
Generate common labels for the chart
*/}}
{{- define "halo.labels" -}}
app.kubernetes.io/name: {{ include "halo.name" . }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | quote }}
{{- end -}}