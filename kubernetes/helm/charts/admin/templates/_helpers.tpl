{{- define "admin.name" -}}
{{- default .Chart.Name .Values.nameOverride }}
{{- end -}}

{{- define "admin.fullname" -}}
{{ printf "%s-%s" .Release.Name (include "admin.name" .) | trunc 63 | trimSuffix "-" }}
{{- end -}}
