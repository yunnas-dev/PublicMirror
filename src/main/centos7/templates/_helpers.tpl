{{- define "centos.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "centos.name" -}}
{{- printf "%s" .Chart.Name -}}
{{- end -}}

{{- define "centos.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version -}}
{{- end -}}