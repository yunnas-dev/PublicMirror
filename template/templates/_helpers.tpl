{{/*
Generate the fullname of the release, limiting to 63 characters
*/}}
{{- define "my-app.fullname" -}}
{{- printf "%s-%s" .Release.Name "my-app" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate the name of the chart
*/}}
{{- define "my-app.name" -}}
my-app
{{- end -}}

{{/*
Generate common labels for the chart
*/}}
{{- define "my-app.labels" -}}
app.kubernetes.io/name: {{ include "my-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | quote }}
createdBy: "Apps"
{{- end -}}
