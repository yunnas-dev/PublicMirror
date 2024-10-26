{{/*
Generate the fullname of the release, limiting to 63 characters
*/}}
{{- define "qinglong.fullname" -}}
{{- printf "%s-%s" .Release.Name "qinglong" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate the name of the chart
*/}}
{{- define "qinglong.name" -}}
qinglong
{{- end -}}

{{/*
Generate common labels for the chart
*/}}
{{- define "qinglong.labels" -}}
app.kubernetes.io/name: {{ include "qinglong.name" . }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | quote }}
createdBy: "Apps"
{{- end -}}