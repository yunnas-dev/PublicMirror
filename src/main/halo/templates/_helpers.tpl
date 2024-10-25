{{/*
Generate the full name of the release, limiting to 63 characters
*/}}
{{- define "halo.fullname" -}}
{{- printf "%s-%s" .Release.Name "halo" | trunc 63 | trimSuffix "-" -}}
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
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}