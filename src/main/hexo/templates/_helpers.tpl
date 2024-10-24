{{/*
Generate the full name of the chart
*/}}
{{- define "hexo.fullname" -}}
{{- .Release.Name }}-hexo
{{- end -}}

{{/*
Get the chart name
*/}}
{{- define "hexo.name" -}}
{{- .Chart.Name }}
{{- end -}}