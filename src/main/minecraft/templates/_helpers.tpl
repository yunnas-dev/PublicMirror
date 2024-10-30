{{/*
Generate the fullname of the release, limiting to 63 characters
*/}}
{{- define "minecraft.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "minecraft.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate the name of the chart
*/}}
{{- define "minecraft.name" -}}
minecraft
{{- end -}}

{{/*
Generate common labels for the chart
*/}}
{{- define "minecraft.labels" -}}
app.kubernetes.io/name: {{ include "minecraft.name" . }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | quote }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "minecraft.selectorLabels" -}}
app.kubernetes.io/name: {{ include "minecraft.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}