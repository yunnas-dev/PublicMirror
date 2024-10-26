{{/*
Generate the fullname of the release, limiting to 63 characters
*/}}
{{- define "emqx.fullname" -}}
{{- printf "%s-%s" .Release.Name "emqx" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate the name of the chart
*/}}
{{- define "emqx.name" -}}
emqx
{{- end -}}

{{/*
Generate common labels for the chart
*/}}
{{- define "emqx.labels" -}}
app.kubernetes.io/name: {{ include "emqx.name" . }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | quote }}
createdBy: "Apps"
{{- end -}}