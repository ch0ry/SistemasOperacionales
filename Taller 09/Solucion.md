## Taller Investigativo 09
### Juan Pablo Cerinza Zaraza 2190081

#### Cual es significado del termino espera activa?

El término "espera activa" se refiere a una técnica utilizada para optimizar el rendimiento de los programas o sistemas. Se trata de un enfoque en el que un programa o hilo de ejecución no se duerme o bloquea mientras espera que ocurra algún evento o se complete una operación, sino que realiza una serie de acciones o tareas útiles durante ese tiempo.

En lugar de simplemente quedarse inactivo o desperdiciar ciclos de CPU, un programa en espera activa continúa ejecutando instrucciones o realiza otras tareas que no dependen directamente del evento esperado. Esto permite aprovechar al máximo los recursos disponibles y reducir el tiempo de espera percibido.

La espera activa se utiliza comúnmente en algoritmos de concurrencia, donde varios hilos de ejecución trabajan de forma simultánea y necesitan coordinarse entre sí. En lugar de bloquear un hilo y hacerlo esperar pasivamente, se puede utilizar la espera activa para que el hilo realice otras tareas o consulte periódicamente el estado del evento o recurso esperado.

#### De que manera se puede evitar la espera activa?

-  **Uso de interrupciones o notificaciones**: En lugar de tener un programa en espera activa consultando repetidamente el estado de un evento o recurso, se pueden utilizar interrupciones o notificaciones para que el programa se active automáticamente cuando ocurra el evento esperado. Esto reduce la necesidad de una espera activa continua y utiliza eficientemente los recursos del sistema.
    
-  **Utilización de sincronización y bloqueo adecuados**: En entornos de concurrencia, donde múltiples hilos de ejecución están trabajando simultáneamente, se pueden emplear mecanismos de sincronización y bloqueo adecuados para evitar la espera activa innecesaria. Estos mecanismos permiten que los hilos esperen de manera más eficiente hasta que se cumpla una condición o evento específico.
    
- **Utilización de técnicas de programación asincrónica**: En lugar de esperar activamente la finalización de una operación, se pueden utilizar técnicas de programación asincrónica, como callbacks, promesas o programación basada en eventos. Estas técnicas permiten que un programa continúe ejecutando otras tareas mientras espera una respuesta, evitando así la espera activa.
    
- **Diseño de algoritmos y estructuras de datos eficientes**: Al diseñar algoritmos y estructuras de datos, se puede buscar optimizar el rendimiento para evitar la necesidad de esperas activas prolongadas. Esto implica utilizar algoritmos más eficientes, estructuras de datos adecuadas y técnicas de optimización para reducir el tiempo de espera global.

#### Explique por qué los bloqueos mediante bucle sin fin no son apropiados para sistemas monoprocesador, pero se usan con frecuencia en los sistemas multiprocesador.

Los bloqueos mediante bucle sin fin son una técnica utilizada en programación concurrente para esperar activamente la liberación de un recurso o una condición específica. Consiste en ejecutar repetidamente un bucle que verifica si la condición esperada se ha cumplido, manteniendo así al hilo en un estado de espera activa.

Sin embargo, los bloqueos mediante bucle sin fin no son apropiados para sistemas monoprocesador, donde solo hay un solo núcleo de procesamiento. Esto se debe a que, en un sistema monoprocesador, si un hilo se encuentra en un bucle sin fin de espera activa, continuará utilizando los recursos del procesador de manera ineficiente y bloqueará el progreso de otros hilos que también necesitan utilizar el mismo procesador.

En un sistema multiprocesador, donde hay múltiples núcleos de procesamiento, los bloqueos mediante bucle sin fin se utilizan con mayor frecuencia. En este caso, aunque un hilo esté en espera activa, otros hilos pueden seguir ejecutándose en paralelo en diferentes núcleos de procesamiento. Esto permite aprovechar al máximo los recursos disponibles y mantener la eficiencia del sistema en general.

#### Explique por qué las interrupciones no son apropiadas para implementar primitivas de sincronización en los sistemas multiprocesador

Las interrupciones son señales generadas por hardware o software para indicar la ocurrencia de un evento específico que requiere atención inmediata del procesador. Aunque las interrupciones son una forma efectiva de manejar eventos externos y asincrónicos, no son apropiadas para implementar primitivas de sincronización en sistemas multiprocesador por las siguientes razones:

-  **Coherencia de caché**: En un sistema multiprocesador, cada núcleo generalmente tiene su propia memoria caché. Cuando se produce una interrupción y se ejecuta un manejador de interrupciones, puede haber problemas de coherencia de caché. Esto se debe a que la información compartida entre los núcleos puede estar almacenada en diferentes cachés y no reflejar el estado actualizado en todos los núcleos. Esto puede llevar a comportamientos incoherentes y errores en la sincronización.
    
- **Latencia y prioridad**: Las interrupciones se manejan en función de su prioridad, y las interrupciones de mayor prioridad pueden interrumpir el flujo normal de ejecución del procesador para atenderlas. Esto puede generar retrasos y afectar negativamente el rendimiento general del sistema, especialmente si se utilizan para implementar primitivas de sincronización en tareas críticas.
    
- **Exclusión mutua**: Las interrupciones no proporcionan mecanismos adecuados para garantizar la exclusión mutua en situaciones en las que múltiples hilos o procesadores necesitan acceder a un recurso compartido de forma ordenada y sin conflictos. El manejo de interrupciones no proporciona una forma sencilla de bloquear o desbloquear secciones críticas del código y puede generar problemas de race conditions o condiciones de carrera.

#### Describa como se puede utilizar la instrucción swap() para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada.

La instrucción `swap()` es una operación atómica que intercambia el valor de una variable con otro valor especificado. Puede utilizarse para proporcionar un mecanismo de exclusión mutua con espera limitada utilizando la técnica de prueba y bloqueo (test and set). A continuación, se describe cómo se puede implementar:

-  Definir una variable compartida, por ejemplo, `lock`, que actuará como una bandera o semáforo para indicar el estado de exclusión mutua.
    
-  Inicializar `lock` con un valor que represente la condición de recurso libre, por ejemplo, 0.
    
- Cuando un hilo desea entrar en una sección crítica protegida, ejecuta una instrucción `swap()` que intenta establecer `lock` en un valor que represente la condición de recurso ocupado, por ejemplo, 1.
    
- Si el resultado de la instrucción `swap()` es el valor previo de `lock`, significa que el recurso estaba libre y el hilo obtiene la exclusión mutua. Si el resultado es diferente, significa que otro hilo ya tiene el recurso y el hilo actual debe esperar.
    
-  Para satisfacer el requisito de espera limitada, en lugar de entrar en un bucle de espera activa, el hilo puede utilizar una estrategia como la espera ocupada (busy-waiting) o la espera exponencial.
    
    -   En la espera ocupada, el hilo repite la instrucción `swap()` en un bucle hasta que logra establecer `lock` en su valor deseado. Esto implica que el hilo está utilizando ciclos de CPU para verificar constantemente la disponibilidad del recurso. Sin embargo, esto puede generar un consumo innecesario de recursos del procesador.
        
    -   En la espera exponencial, el hilo realiza una espera pasiva durante un tiempo determinado antes de intentar nuevamente la instrucción `swap()`. El tiempo de espera se incrementa exponencialmente con cada intento, lo que permite reducir el consumo de recursos del procesador. Esta técnica puede implementarse utilizando funciones como `sleep()` o `yield()` para pausar la ejecución del hilo durante un período de tiempo.
        
-  Cuando el hilo ha terminado de utilizar el recurso protegido, actualiza `lock` para indicar que el recurso está nuevamente disponible, permitiendo que otros hilos puedan adquirir la exclusión mutua.
#### Los servidores pueden diseñarse de modo que limiten el numero de conexiones abiertas. Explique cómo puede utilizar un servidor los semáforos para limitar el numero de conexiones concurrentes.

Para limitar el número de conexiones concurrentes en un servidor, se puede utilizar la técnica de semáforos. Los semáforos son una primitiva de sincronización que permiten controlar el acceso a un recurso compartido. Aquí está la forma en que un servidor puede utilizar semáforos para limitar el número de conexiones:

- Definir un semáforo, por ejemplo, `connectionSemaphore`, con un valor inicial que represente el número máximo de conexiones permitidas simultáneamente en el servidor.
    
-  Antes de aceptar una nueva conexión, el servidor realiza una operación de espera (`wait()`) en el semáforo `connectionSemaphore`. Si el valor actual del semáforo es 0, lo que indica que se ha alcanzado el límite máximo de conexiones, el servidor se bloquea y espera hasta que se libere una conexión.
    
- Cuando una conexión se cierra o se libera, el servidor realiza una operación de señal (`signal()`) en el semáforo `connectionSemaphore`, incrementando su valor en 1 para indicar que hay una conexión disponible.
    
-  Después de la operación de señal, el servidor está listo para aceptar una nueva conexión y repite el proceso de espera en el semáforo antes de aceptarla.
#### Demuestre que los monitores y semáforos son equivalentes, en cuanto a que se pueden emplear para implementar los mismos tipos de problemas de sincronización.
Los monitores y los semáforos son dos primitivas de sincronización utilizadas para resolver problemas de concurrencia y sincronización en programación. Aunque tienen enfoques y características diferentes, son equivalentes en términos de que se pueden utilizar para implementar los mismos tipos de problemas de sincronización.

-  **Monitores**: Un monitor es una construcción de programación que encapsula datos y procedimientos en un solo objeto. Proporciona un mecanismo para la exclusión mutua y la coordinación de la concurrencia. Los monitores se basan en dos conceptos principales: bloqueo y variables de condición.

	-   **Bloqueo**: Un monitor utiliza un bloqueo interno para garantizar la exclusión mutua, lo que significa que solo un hilo puede ejecutar un procedimiento dentro del monitor a la vez. El bloqueo se adquiere cuando un hilo ingresa al monitor y se libera cuando el hilo sale del monitor.
    
	-   **Variables de condición**: Los monitores también tienen variables de condición, que permiten a los hilos esperar y ser notificados sobre eventos específicos dentro del monitor. Los hilos pueden esperar en una variable de condición y ser despertados por otro hilo cuando se cumple una cierta condición.
    

-  **Semáforos**: Los semáforos son contadores que se utilizan para controlar el acceso a un recurso compartido. Existen dos tipos principales de semáforos: binarios y contadores.

	-   **Semáforo binario**: Un semáforo binario tiene dos valores posibles, 0 y 1. Se utiliza para implementar exclusión mutua, donde un hilo adquiere el semáforo y bloquea el acceso al recurso compartido, mientras que otros hilos deben esperar hasta que el semáforo esté liberado.
    
	-   **Semáforo contador**: Un semáforo contador tiene un valor inicial y puede ser incrementado o decrementado. Se utiliza para controlar la cantidad de recursos disponibles. Si el valor del semáforo es 0, los hilos deben esperar hasta que el semáforo se incremente y se liberen recursos.
    

Ahora, la equivalencia entre monitores y semáforos radica en que se pueden utilizar para resolver los mismos tipos de problemas de sincronización. Por ejemplo:

-   **Problema de los lectores y escritores**: Tanto los monitores como los semáforos se pueden utilizar para implementar una solución al problema de los lectores y escritores, que implica coordinar el acceso a una región de datos compartida por múltiples hilos lectores y escritores.
    
-   **Problema de los productores y consumidores**: Tanto los monitores como los semáforos se pueden utilizar para implementar una solución al problema de los productores y consumidores, que implica coordinar la comunicación y el acceso a un búfer compartido por productores y consumidores.

#### La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuado para porciones pequeñas. Explique por qué es cierto esto.

Cuando se habla de exclusión mutua estricta en un monitor de búfer limitado, significa que solo un hilo puede estar ejecutando un procedimiento dentro del monitor en un momento dado. Esta restricción puede afectar el rendimiento del monitor, especialmente cuando se trata de porciones pequeñas de código.

Cuando se tiene un monitor de búfer limitado y se aplica una exclusión mutua estricta, cada hilo que necesita acceder al monitor debe esperar a que el hilo actualmente en el monitor termine su ejecución y lo libere. Esto significa que incluso si un hilo solo necesita realizar una pequeña porción de código dentro del monitor, debe esperar a que el monitor se libere por completo antes de poder ejecutar su sección crítica.

En porciones pequeñas de código, donde el tiempo de ejecución es rápido, la espera para adquirir el monitor puede llegar a ser significativa en comparación con la ejecución real del código. Esto se conoce como sobrecarga de exclusión mutua.

Por lo tanto, en un monitor de búfer limitado, la exclusión mutua estricta puede afectar negativamente el rendimiento cuando se trata de porciones pequeñas de código. La espera adicional para adquirir el monitor y la liberación completa del monitor antes de que otros hilos puedan acceder a él pueden generar una sobrecarga innecesaria y retrasos en la ejecución.

#### Por qué Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador?

Windows y Linux utilizan bloqueos mediante bucle sin fin, también conocidos como "spinning locks" o "spinlocks", como mecanismo de sincronización principalmente en sistemas multiprocesador y no en sistemas monoprocesador debido a las diferencias en la estructura y comportamiento de los sistemas.

En un sistema monoprocesador, solo hay un único procesador o núcleo de procesamiento disponible. En este caso, los bloqueos mediante bucle sin fin no son apropiados porque, al no haber otros hilos o procesadores ejecutándose de forma concurrente, el uso de espera activa (busy-waiting) consumiría recursos del procesador sin proporcionar beneficios significativos. En lugar de eso, en un sistema monoprocesador, se utilizan otros mecanismos de sincronización que permiten al procesador esperar de forma pasiva o realizar un cambio de contexto eficiente.

Por otro lado, en un sistema multiprocesador, hay varios procesadores o núcleos de procesamiento trabajando simultáneamente en tareas diferentes. Los bloqueos mediante bucle sin fin pueden ser adecuados en estos sistemas debido a las siguientes razones:

-  **Evitar cambios de contexto innecesarios**: Los bloqueos mediante bucle sin fin permiten a un hilo esperar activamente, utilizando ciclos de CPU, hasta que el recurso o el bloqueo esté disponible. Esto evita cambios de contexto innecesarios entre hilos y reduce la sobrecarga asociada con el cambio de contexto.
    
-  **Mayor eficiencia en tiempos de espera cortos**: En sistemas multiprocesador, si se espera que el recurso esté disponible rápidamente, como en situaciones en las que se espera un acceso compartido a una sección crítica por un corto período de tiempo, la espera activa puede ser más eficiente que la realización de un cambio de contexto y pasar el control a otro hilo.
