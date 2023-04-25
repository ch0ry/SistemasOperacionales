## Taller Investigativo 05 
### Juan Pablo Cerinza Zaraza 2190081

#### Compare las diferencias entre la planeación a corto plazo y largo plazo.
La planeación a corto plazo y la planeación a largo plazo son dos enfoques diferentes de la toma de decisiones en la investigación. A continuación, se presentan las diferencias entre ambas:

- **Horizonte temporal**: La principal diferencia entre la planeación a corto plazo y la planeación a largo plazo es la duración del horizonte temporal. La planeación a corto plazo se enfoca en el futuro inmediato, generalmente un período de tiempo de 6 a 12 meses, mientras que la planeación a largo plazo se enfoca en el futuro lejano, generalmente un período de 3 a 5 años o más.
    
-  **Detalles específicos**: La planeación a corto plazo se enfoca en detalles específicos y concretos, tales como las tareas diarias y la asignación de recursos para cumplir con los objetivos a corto plazo. En cambio, la planeación a largo plazo se enfoca en objetivos más amplios y estratégicos, tales como el crecimiento y la expansión de la investigación en el futuro.
    
-  **Flexibilidad**: La planeación a corto plazo permite mayor flexibilidad en la toma de decisiones debido a la naturaleza inmediata de sus objetivos y plazos. Por otro lado, la planeación a largo plazo requiere un mayor grado de rigidez y disciplina en la toma de decisiones para asegurar que los objetivos estratégicos sean alcanzados.
    
- **Horizonte temporal de las consecuencias**: Las consecuencias de las decisiones tomadas en la planeación a corto plazo se pueden observar en un futuro cercano, mientras que las consecuencias de las decisiones tomadas en la planeación a largo plazo pueden tardar más tiempo en manifestarse.

#### Caracterice dos procesos que se puedan considerar a mediano plazo.

Dos procesos que se pueden considerar a mediano plazo son:

-  **Desarrollo de productos**: El proceso de desarrollo de productos es un proceso a mediano plazo que implica la creación de un nuevo producto o la mejora de un producto existente. Este proceso incluye una serie de actividades, tales como la investigación de mercado, la identificación de necesidades de los clientes, la conceptualización del producto, el diseño y prototipado, pruebas de calidad, y la producción en masa. Este proceso puede tardar de unos pocos meses a varios años dependiendo de la complejidad del producto y la industria en la que se está trabajando.
    
-  **Planificación de la cadena de suministro**: La planificación de la cadena de suministro es un proceso a mediano plazo que implica la gestión de los recursos y actividades necesarios para llevar los productos desde el proveedor hasta el cliente final. Este proceso incluye la evaluación de la capacidad de producción, la planificación de la demanda, la gestión de inventarios, la selección y evaluación de proveedores, y la gestión de riesgos. Este proceso puede tardar de unos pocos meses a varios años dependiendo del tamaño de la empresa, la complejidad de la cadena de suministro y los cambios en el mercado.

#### Describa las acciones que toma el kernel para el cambio de contexto entre procesos

El cambio de contexto se produce cuando el kernel del sistema operativo debe interrumpir la ejecución de un proceso en la CPU y seleccionar otro proceso para ejecutarse. El kernel es responsable de realizar el cambio de contexto y las acciones que toma para ello son las siguientes:

-  **Guardado del contexto actual:** El kernel debe guardar el contexto actual del proceso en ejecución, incluyendo el valor de los registros del CPU y la información de estado del proceso.
    
-  **Selección del próximo proceso**: El kernel debe seleccionar el próximo proceso a ejecutar, utilizando un algoritmo de planificación de procesos que determine el siguiente proceso en la cola de procesos listos.
    
-  **Restauración del contexto del próximo proceso**: El kernel debe restaurar el contexto del próximo proceso, incluyendo la información de estado y los valores de los registros de CPU.
    
-  **Asignación de recursos**: El kernel debe asignar los recursos necesarios al nuevo proceso, como la asignación de memoria y la configuración de los registros del CPU.
    
-  **Reanudación de la ejecución del proceso**: Una vez que se ha completado la asignación de recursos y se ha restaurado el contexto del proceso seleccionado, el kernel puede reanudar la ejecución del proceso.
#### Defina las ventajas y desventajas desde el punto de vista del programador para comunicación síncrona y asíncrona.

La comunicación síncrona y asíncrona son dos formas de interacción entre procesos en programación, cada una con sus ventajas y desventajas desde el punto de vista del programador.

La comunicación síncrona es aquella en la que el proceso que envía una solicitud debe esperar a que el proceso receptor responda antes de continuar su ejecución. Las ventajas de la comunicación síncrona son:

-   Es fácil de entender y utilizar.
-   Garantiza que la comunicación se realiza con éxito, ya que el proceso emisor recibe una respuesta inmediata del proceso receptor.
-   Asegura la integridad de los datos transmitidos, ya que el emisor y el receptor están sincronizados y trabajan en el mismo momento.

Sin embargo, también tiene desventajas:

-   Puede resultar en cuellos de botella en el rendimiento del sistema, ya que los procesos deben esperar la respuesta del receptor antes de continuar su ejecución.
-   Si el proceso receptor no responde, el proceso emisor se queda bloqueado y no puede continuar su ejecución.

Por otro lado, la comunicación asíncrona es aquella en la que el proceso emisor no espera una respuesta inmediata del proceso receptor antes de continuar su ejecución. Las ventajas de la comunicación asíncrona son:

-   Permite que los procesos sigan ejecutándose sin esperar la respuesta del receptor, mejorando el rendimiento del sistema.
-   Permite que el proceso emisor envíe múltiples solicitudes a diferentes procesos receptores simultáneamente.
-   El proceso emisor no se queda bloqueado si el proceso receptor no responde.

Sin embargo, también tiene desventajas:

-   Puede ser más difícil de entender y utilizar que la comunicación síncrona.
-   Puede resultar en problemas de sincronización y pérdida de integridad de los datos transmitidos si el proceso receptor no responde a tiempo o si la comunicación falla.
-   Requiere una gestión cuidadosa de los recursos del sistema para evitar que los procesos se sobrecarguen.
#### Defina las ventajas y desventajas desde el punto de vista del OS para envío por copia y envío por referencia.

El envío por copia y el envío por referencia son dos formas diferentes de pasar parámetros a una función en un sistema operativo. Cada una tiene sus propias ventajas y desventajas desde el punto de vista del sistema operativo.

El envío por copia implica que se copia el valor de un parámetro y se lo pasa a la función. Las ventajas de este enfoque son:

-   Es seguro, ya que cualquier modificación realizada dentro de la función no afectará al valor original.
-   Es fácil de entender y utilizar.

Sin embargo, también tiene desventajas:

-   Puede ser costoso en términos de memoria y tiempo de procesamiento, ya que se requiere la copia de los datos.
-   No es adecuado para tipos de datos grandes, ya que la copia de datos puede ser muy costosa.

Por otro lado, el envío por referencia implica que se pasa la dirección de memoria de un parámetro a la función. Las ventajas de este enfoque son:

-   Es eficiente, ya que no se realiza una copia de los datos.
-   Es adecuado para tipos de datos grandes.

Sin embargo, también tiene desventajas:

-   Puede ser menos seguro, ya que cualquier modificación realizada dentro de la función afectará al valor original.
-   Puede ser más difícil de entender y utilizar, especialmente para programadores menos experimentados.

#### Defina las ventajas y desventajas desde el punto de vista del OS para mensajes de tamaño fijo y de tamaño variable.

Los mensajes de tamaño fijo y variable son dos formas diferentes de enviar datos entre procesos en un sistema operativo. Cada una tiene sus propias ventajas y desventajas desde el punto de vista del sistema operativo.

Los mensajes de tamaño fijo tienen un tamaño predefinido y constante. Las ventajas de este enfoque son:

-   Son más fáciles de implementar y gestionar, ya que el tamaño del mensaje es conocido de antemano.
-   Son más eficientes en términos de rendimiento, ya que no se requiere ningún cálculo para determinar el tamaño del mensaje.

Sin embargo, también tienen desventajas:

-   No son adecuados para transmitir datos de tamaño variable, ya que el tamaño del mensaje debe ser predefinido.
-   Pueden llevar a la subutilización de la memoria, ya que se asigna una cantidad fija de memoria para cada mensaje, incluso si el mensaje es más pequeño.

Por otro lado, los mensajes de tamaño variable tienen un tamaño que puede cambiar dinámicamente. Las ventajas de este enfoque son:

-   Son adecuados para transmitir datos de tamaño variable.
-   Permiten una utilización más eficiente de la memoria, ya que se asigna la cantidad de memoria necesaria para cada mensaje.

Sin embargo, también tienen desventajas:

-   Son más difíciles de implementar y gestionar, ya que el tamaño del mensaje puede cambiar en cualquier momento.
-   Son menos eficientes en términos de rendimiento, ya que se requiere un cálculo adicional para determinar el tamaño del mensaje.

#### Describa los estados de un proceso.

Un proceso en un sistema operativo puede encontrarse en diferentes estados, dependiendo de su estado actual en la ejecución. A continuación se describen los diferentes estados de un proceso:

- **Nuevo**: El proceso ha sido creado, pero aún no se ha iniciado.
    
-  **Listo**: El proceso ha sido cargado en la memoria y está listo para ser ejecutado, pero aún no se le ha asignado un procesador.
    
-  **En ejecución**: El proceso está actualmente siendo ejecutado en un procesador.
    
-  **Bloqueado**: El proceso está temporalmente suspendido porque está esperando que se complete alguna tarea, como una entrada/salida de disco o de red. En este estado, el proceso no está utilizando la CPU.
    
-  **En espera**: El proceso está esperando a que se le asigne un recurso, como un semáforo o un bloqueo.
    
-  **Terminado**: El proceso ha finalizado su ejecución y ha sido eliminado de la memoria.

#### Que datos se encuentran en un PCB.

Un PCB (Process Control Block o Bloque de Control de Proceso) es una estructura de datos que el sistema operativo utiliza para almacenar información sobre un proceso en ejecución. A continuación, se describen los datos que generalmente se encuentran en un PCB:

-  **Identificación del proceso**: información que identifica de manera única al proceso, como su ID o número de proceso.
    
- **Estado del proceso**: información sobre el estado actual del proceso, como si está en ejecución, suspendido o terminado.
    
- **Contador de programa**: una variable que indica la dirección de memoria de la próxima instrucción que se ejecutará.
    
-  **Registros de CPU**: una copia de los registros del procesador que se utilizan para ejecutar el proceso.
    
-  **Información de planificación**: información utilizada por el planificador del sistema operativo para decidir cuál proceso se ejecutará a continuación, como el tiempo de ejecución restante y la prioridad del proceso.
    
- **Información de memoria**: información sobre la asignación de memoria del proceso, como la dirección de inicio del proceso, el tamaño del segmento de pila y el tamaño del segmento de datos.
    
- **Información de recursos**: información sobre los recursos asignados al proceso, como archivos abiertos, dispositivos de E/S, semáforos, bloqueos y otros recursos del sistema.
    
-  **Información de estadísticas**: información que se utiliza para recopilar estadísticas sobre el uso de recursos del sistema, como el tiempo de CPU utilizado, el número de operaciones de E/S y otros datos relevantes.

#### Describa un modelo de comunicación Cliente-Servidor.

El modelo de comunicación Cliente-Servidor es un paradigma de comunicación entre dos programas o procesos informáticos, donde uno actúa como cliente y el otro como servidor. En este modelo, el cliente envía solicitudes al servidor y espera una respuesta del mismo. El servidor, por su parte, recibe las solicitudes del cliente, procesa la información solicitada y envía una respuesta al cliente.

El modelo de comunicación Cliente-Servidor consta de tres componentes principales: el cliente, el servidor y el canal de comunicación entre ambos. El canal de comunicación puede ser una red de computadoras, un bus de sistema o cualquier otro medio de comunicación que permita la transmisión de datos.

En términos generales, el modelo de comunicación Cliente-Servidor sigue los siguientes pasos:

-  El cliente envía una solicitud al servidor a través del canal de comunicación.
    
-  El servidor recibe la solicitud del cliente y la procesa.
    
-  El servidor envía una respuesta al cliente a través del canal de comunicación.
    
-  El cliente recibe la respuesta del servidor y la procesa.
