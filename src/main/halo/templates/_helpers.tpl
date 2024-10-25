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
app.kubernetes.io/instance: {{ toString .Release.Name }}
app.kubernetes.io/version: {{ toString .Chart.AppVersion }}
helm.sh/chart: {{ printf "%s-%s" (toString .Chart.Name) (toString .Chart.Version) }}
{{- end -}}