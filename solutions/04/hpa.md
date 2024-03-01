## Horizontal Pod Autoscaling (HPA) en Amazon EKS

El escalado horizontal de pods en Amazon EKS te permite ajustar automáticamente el número de réplicas de tus pods en función de la carga de trabajo y la utilización de recursos.

### Beneficios:
- Mejora la escalabilidad y la disponibilidad de las aplicaciones.
- Optimiza el uso de recursos al aumentar o reducir automáticamente el número de pods.
- Permite una gestión más eficiente de la carga de trabajo, adaptándose dinámicamente a las demandas del tráfico.

### Configuración:
1. Asegúrate de tener el **Metric Server** instalado para recopilar métricas de recursos.
2. Define los recursos de CPU y memoria como métricas para el escalado.
3. Establece los límites y objetivos de utilización para activar el escalado automático.
4. Asocia el HPA con tus despliegues de Kubernetes para aplicar las políticas de escalado.

### Resultados:
- Los pods se escalan automáticamente para manejar picos de carga y maximizar la eficiencia.
- Garantiza una experiencia de usuario fluida y sin interrupciones, incluso en momentos de alta demanda.
- Simplifica la gestión operativa al eliminar la necesidad de ajustes manuales en la escala de tus aplicaciones.

Con Horizontal Pod Autoscaling en Amazon EKS, tus aplicaciones pueden adaptarse dinámicamente a las necesidades del negocio y ofrecer un rendimiento óptimo en todo momento!

URL: https://docs.aws.amazon.com/eks/latest/userguide/metrics-server.html