{{- define "frp-operator.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "frp-operator.namespace" -}}
{{- .Values.namespace | default .Release.Namespace -}}
{{- end -}}
