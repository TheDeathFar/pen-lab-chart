{{- define "student-lab.namespace" -}}
{{- .Values.project.name }}
{{- end }}

{{- define "student-lab.vmName" -}}
{{- .Values.vm.namePrefix }}-{{ .Release.Name }}-{{ .index }}
{{- end }}

{{- define "student-lab.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
