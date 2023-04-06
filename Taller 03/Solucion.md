# Taller Investigación 03


### 1. En entornos compartidos, los usuarios comparten el sistema. Esto puede dar lugar a varios problemas de seguridad. 
- ### Mencione dos problemas y expliquelos.
	Dentro de los problemas que pueden surgir en los entornos compartidos, el **acceso no autorizado**  de los recursos compartidos del sistema por parte de otro usuario constituye un gran problema. Puesto que si un usuario es capaz de obtener acceso a algún recurso sensible del otro, no solamente pone en riesgo la totalidad del sistema sino la privacidad de los demás usuarios.
De la misma manera, el **malware** persiste como un problema que se extiende a través de todo el sistema, donde si un usuario infecta el sistema, la totalidad de los usuarios que allí residen se verán igualmente afectados.


- ### Es posible asegurar el mismo grado de seguridad en un sistema compartido que en un sistema dedicado. Explique su respuesta.
	Realmente, el grado de seguridad entre un sistema compartido y dedicado no se puede asegurar. Pero en un sistema dedicado, el usuario tiene control total de los recursos, en donde tiene conocimiento del uso que se le da al sistema y las posibles brechas de seguridad que este uso implica. A partir de ello, el usuario dedicado puede implementar medidas de seguridad personalizadas que en el uso compartido no sería igual. No obstante, se puede extender la división entre usuarios por medio de autenticación, cifrado de datos. De tal forma que se mitigue el posible daño.



### 2. Un problema común en los OS es la utilización de recursos. Enumere los recursos que deben gestionarse en las siguientes maquina (explique porqué):

- ### Sistemas embebidos: 
	Se debe gestionar el uso de la memoria y del procesador, ya que por lo general estos sistemas tienen recursos limitados. La cantidad de memoria y la capacidad del procesador suelen ser relativamente bajas, por lo que es importante optimizar su uso para garantizar el funcionamiento adecuado del sistema.
- ### Mainframe:
	Se debe gestionar el uso del procesador, la memoria, los dispositivos de entrada/salida y el almacenamiento. Estos sistemas suelen ser utilizados para procesar grandes cantidades de datos y ejecutar aplicaciones críticas para el negocio. Por lo tanto, es importante garantizar que los recursos estén adecuadamente dimensionados y que se implementen medidas de gestión de recursos para evitar cuellos de botella y garantizar el rendimiento y la disponibilidad del sistema.
- ### Workstation:
	Se debe gestionar el uso del procesador, la memoria, el almacenamiento y la red. Estos sistemas se utilizan para tareas como diseño gráfico, edición de video y otras aplicaciones que requieren un alto rendimiento y un uso intensivo de recursos. Es importante optimizar el uso de los recursos para garantizar el rendimiento adecuado y evitar la interrupción del trabajo del usuario.
- ### Server:
	Se debe gestionar el uso del procesador, la memoria, el almacenamiento, la red y la energía. Estos sistemas se utilizan para alojar aplicaciones y servicios críticos, por lo que es importante garantizar que los recursos estén adecuadamente dimensionados y que se implementen medidas de gestión de recursos para garantizar el rendimiento, la disponibilidad y la seguridad del sistema.
- ### Mobile:
	Se debe gestionar el uso del procesador, la memoria, el almacenamiento, la batería y la red. Estos dispositivos tienen recursos limitados y están diseñados para ser portátiles, por lo que es importante optimizar el uso de los recursos para garantizar la duración de la batería y el rendimiento adecuado. Además, se debe implementar una gestión eficaz de la red para garantizar la conectividad y evitar el consumo innecesario de datos.

### Caracterice dos casos de uso para implementar un OS para servidor y PC.

-  **Servidor de base de datos**: Un servidor de base de datos es un sistema informático que se utiliza para almacenar y gestionar grandes cantidades de datos. Los servidores de bases de datos suelen ser sistemas de alta capacidad de procesamiento y memoria, que permiten acceder rápidamente a los datos almacenados. Un OS para servidor, como Windows Server o Linux Server, es una opción común para alojar servidores de bases de datos, ya que estos sistemas operativos están diseñados para manejar múltiples solicitudes de acceso a la base de datos y para administrar la seguridad y el rendimiento del servidor. Además, un OS para PC, como Windows o Mac OS, también se puede utilizar para implementar un servidor de bases de datos en una pequeña empresa o en un ambiente de desarrollo.
-   **Estación de trabajo para diseño gráfico**: Una estación de trabajo para diseño gráfico es un sistema informático que se utiliza para realizar tareas de diseño gráfico y edición de video, como la creación de imágenes y vídeos publicitarios, animaciones, diseños de páginas web y otros trabajos que requieren un alto rendimiento y uso intensivo de recursos. Un OS para PC, como Windows o Mac OS, es una opción común para alojar estaciones de trabajo de diseño gráfico, ya que estos sistemas operativos proporcionan herramientas y software especializado para el diseño gráfico y la edición de video. Además, un OS para servidor también se puede utilizar para alojar aplicaciones de diseño gráfico y video, para que los usuarios puedan acceder a ellas de forma remota y trabajar en colaboración en proyectos de diseño.

### Compare las diferencias entre multiprocesamiento simétrico y asimétrico

El multiprocesamiento se refiere al uso de múltiples procesadores o núcleos de procesamiento en un sistema informático. Hay dos enfoques principales para el multiprocesamiento: el multiprocesamiento simétrico (SMP) y el multiprocesamiento asimétrico (ASMP).

El multiprocesamiento simétrico (SMP) es una técnica de multiprocesamiento en la que todos los procesadores tienen acceso igualitario a la memoria y a otros recursos del sistema. Cada procesador puede ejecutar cualquier tarea del sistema operativo y los procesos se distribuyen entre los diferentes procesadores de manera equitativa. En un sistema SMP, los procesadores son idénticos en cuanto a velocidad, tamaño de caché y otros parámetros, y se comunican a través de un bus compartido de alta velocidad. La ventaja del SMP es que es fácil de programar y gestionar, y permite una gran escalabilidad en cuanto al número de procesadores que se pueden agregar al sistema.

Por otro lado, el multiprocesamiento asimétrico (ASMP) es una técnica de multiprocesamiento en la que cada procesador tiene una tarea específica y se dedica a una tarea en particular, ya sea el manejo de entrada y salida, la gestión de memoria o la ejecución de procesos específicos. En un sistema ASMP, cada procesador tiene acceso a diferentes recursos y se especializa en tareas específicas. Esto significa que el software debe estar diseñado específicamente para aprovechar las diferentes capacidades de los procesadores y coordinar su uso eficiente. La ventaja del ASMP es que puede ser más eficiente en términos de energía y puede ser más rentable en situaciones en las que se necesitan diferentes tipos de procesadores para manejar diferentes tareas.

En resumen, la principal diferencia entre SMP y ASMP es que en el primero todos los procesadores son iguales y tienen acceso a los mismos recursos, mientras que en el segundo cada procesador tiene un papel específico y se especializa en tareas diferentes. Ambas técnicas tienen sus ventajas y desventajas, y la elección entre ellas dependerá de los requisitos específicos del sistema y las aplicaciones que se ejecuten en él.

### Enumere los requerimientos para que dos maquinas se junten en un cluster y provean un servicio de alta disponibilidad (HA).

- **Conectividad de red**: Las dos máquinas deben estar conectadas a través de una red confiable y de alta velocidad para garantizar que se puedan comunicar y compartir recursos de manera eficiente. Es recomendable que haya redundancia en la conectividad de red para garantizar que, si una conexión falla, el tráfico de red pueda redirigirse automáticamente a otra conexión disponible.
    
' **Hardware idéntico o similar**: Para garantizar una operación uniforme del clúster y evitar posibles problemas de compatibilidad, es preferible que las máquinas tengan hardware idéntico o similar en cuanto a procesadores, memoria, almacenamiento y otros componentes.
    
 - **Sistema operativo y software compatibles**: Las dos máquinas deben ejecutar el mismo sistema operativo y software de aplicación, y estar configuradas de manera idéntica para garantizar la coherencia de la operación del clúster. Es importante que el software sea compatible con el clúster y capaz de aprovechar las capacidades de alta disponibilidad proporcionadas por el clúster.
    
- ** Configuración de alta disponibilidad**: Para garantizar la alta disponibilidad del servicio, las dos máquinas deben estar configuradas como nodos del clúster y tener roles específicos, como nodos primarios y secundarios, para garantizar la continuidad del servicio en caso de que una máquina falle. Se deben implementar técnicas como la replicación de datos, la detección de fallos y la conmutación por error para garantizar que el servicio esté siempre disponible.
    
-  **Monitoreo y gestión**: Es importante implementar herramientas de monitoreo y gestión que permitan detectar y solucionar problemas en el clúster de manera proactiva antes de que afecten al servicio. También es importante tener un plan de recuperación de desastres en caso de que se produzca una interrupción importante que afecte a todo el clúster.
### Compare las diferencias entre una excepción y una interrupción.

Una excepción es una condición de error o excepcional que ocurre dentro de un proceso en tiempo de ejecución, mientras que una interrupción es un evento generado por hardware o software que detiene momentáneamente la ejecución normal del programa para que se pueda manejar la interrupción.
    
Las excepciones son causadas por errores o situaciones excepcionales dentro del propio proceso, como una división por cero o una referencia a una memoria no válida. Las interrupciones, por otro lado, son generadas por dispositivos externos al procesador, como un temporizador que indica que ha transcurrido un tiempo determinado o una solicitud de entrada/salida de un dispositivo periférico.
    
Las excepciones son manejadas por el propio proceso o por el sistema operativo, y la ejecución del proceso puede continuar después de que se haya manejado la excepción. Las interrupciones, por otro lado, son manejadas por el sistema operativo y pueden involucrar la suspensión temporal de la ejecución del proceso, para que el sistema operativo pueda responder adecuadamente a la interrupción.
    
Una excepción puede provocar la terminación del proceso si no se maneja adecuadamente. Una interrupción, por otro lado, no necesariamente conduce a la terminación del proceso, pero puede afectar el rendimiento del sistema si se producen muchas interrupciones en un corto período de tiempo.
    
Las excepciones son manejadas por el propio procesador, mientras que las interrupciones son manejadas por el controlador de interrupciones, que es un componente hardware dedicado del sistema.

En resumen, las excepciones son causadas por errores o condiciones excepcionales dentro del proceso, mientras que las interrupciones son generadas por dispositivos externos al procesador. Las excepciones son manejadas por el propio proceso o por el sistema operativo, mientras que las interrupciones son manejadas por el sistema operativo.

### El DMA (acceso directo a memoria) se usa en dispositivos I/O para evitar uso innecesario de la CPU.
- ### ¿Como interactuá la CPU con el dispositivo para coordinar la transferencia?
- ### ¿Como sabe la CPU que las operaciones de memoria se han completado?

El DMA (Direct Memory Access o Acceso Directo a Memoria) es una técnica que permite a dispositivos de entrada/salida (I/O) transferir datos directamente entre el dispositivo y la memoria del sistema, sin la necesidad de que la CPU intervenga en cada transferencia.

Para coordinar la transferencia, la CPU y el dispositivo deben comunicarse a través de señales de control. Normalmente, la CPU y el dispositivo I/O utilizan un controlador de DMA (DMA controller) que actúa como intermediario entre ellos. El controlador de DMA recibe comandos de la CPU y los utiliza para configurar el dispositivo I/O y la memoria del sistema para realizar la transferencia. Cuando la transferencia se completa, el controlador de DMA interrumpe a la CPU para informarle de que la transferencia ha finalizado.

La CPU sabe que las operaciones de memoria se han completado a través de señales de interrupción enviadas por el controlador de DMA. Después de configurar el controlador de DMA con la información necesaria para realizar la transferencia de datos, la CPU se dedica a otras tareas mientras el controlador de DMA se encarga de la transferencia. Una vez que el controlador de DMA completa la transferencia, envía una señal de interrupción a la CPU para informarle de que la transferencia ha finalizado. La CPU puede entonces leer o escribir los datos que se han transferido.

En resumen, el controlador de DMA actúa como intermediario entre la CPU y el dispositivo I/O, coordinando la transferencia de datos y enviando señales de interrupción a la CPU para informarle de que la transferencia ha finalizado. Esto permite que la CPU se dedique a otras tareas mientras el dispositivo I/O se encarga de la transferencia, lo que puede mejorar significativamente el rendimiento del sistema.


### Identifique dos razones por las que la cache es útil. ¿Que problemas resuelve y causa?.

La memoria caché es una memoria de alta velocidad que se utiliza para almacenar temporalmente datos y programas que se utilizan con frecuencia en el sistema. Aquí están dos razones por las que la caché es útil:

- **Mejora el rendimiento**: La memoria caché se utiliza para almacenar los datos y programas que se utilizan con frecuencia en la CPU, lo que permite que la CPU acceda a ellos mucho más rápido que si tuviera que buscarlos en la memoria principal. Esto puede mejorar significativamente el rendimiento del sistema, especialmente en sistemas con grandes cantidades de datos.
    
-  **Reduce la congestión en el bus de memoria**: La caché también ayuda a reducir la congestión en el bus de memoria del sistema, lo que puede mejorar el rendimiento general. Cuando la CPU necesita acceder a datos o programas, primero busca en la caché local de la CPU antes de buscar en la memoria principal. Si los datos están en la caché, se acceden rápidamente y no se utiliza el bus de memoria. Esto reduce la carga en el bus de memoria y mejora la eficiencia del sistema.
    

La caché también puede causar algunos problemas, incluyendo:

- **Consistencia de datos**: Cuando los datos se almacenan en caché, puede haber problemas de consistencia de datos si los datos se actualizan en la memoria principal pero no en la caché. Para evitar este problema, se utilizan técnicas como el protocolo de coherencia de caché para garantizar que los datos estén actualizados en todas las cachés y en la memoria principal.
    
- **Caché miss**: Cuando la CPU necesita acceder a datos que no están en la caché, se produce un "caché miss" y la CPU debe buscar los datos en la memoria principal. Esto puede causar una ralentización en el rendimiento del sistema si se producen demasiados caché miss. Para minimizar este problema, se utilizan técnicas como la prebusqueda de caché para intentar predecir qué datos se necesitarán en el futuro y almacenarlos en la caché de antemano.

### Explique con un ejemplo, como se manifiesta el problema de mantener la coherencia de los datos de cache en los siguientes entornos:
 - ### Sistema distribuido:
	 Supongamos que hay varios nodos en un sistema distribuido, cada uno con su propia caché local y una copia de los mismos datos compartidos. Si un nodo modifica los datos, es importante que todas las otras copias de los datos en otras cachés se actualicen para mantener la coherencia de los datos. Esto puede requerir la coordinación de múltiples nodos en el sistema para garantizar que los cambios se propaguen de manera efectiva.
 - ### Sistema multiprocesador:
	 En un sistema multiprocesador, cada procesador tiene su propia caché local y puede acceder a los mismos datos compartidos en la memoria principal. Si un procesador modifica los datos, es importante que todas las otras copias de los datos en otras cachés se actualicen para mantener la coherencia de los datos. Esto puede requerir el uso de un protocolo de coherencia de caché para garantizar que los cambios se propaguen de manera efectiva a todas las cachés.
 - ### Sistema de un solo procesador:
	 Incluso en un sistema de un solo procesador, el problema de la coherencia de la caché puede ocurrir si la caché de datos y la memoria principal se utilizan para almacenar diferentes copias de los mismos datos. Si un proceso modifica los datos en la caché, es importante que la copia en la memoria principal se actualice para mantener la coherencia de los datos. Esto puede requerir el uso de técnicas de sincronización de memoria, como las instrucciones de barrera de memoria, para garantizar que los cambios se propaguen de manera efectiva.

