## Taller Investigativo 06
### Juan Pablo Cerinza Zaraza 2190081

#### Describa dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor rendimiento que el monohilo.

-  **Tareas secuenciales**: Cuando una tarea se realiza en un orden secuencial, puede ser difícil dividirla en subprocesos que se puedan ejecutar simultáneamente. En este caso, utilizar múltiples hilos puede incluso disminuir el rendimiento debido a los costos de conmutación y sincronización. Por ejemplo, la manipulación de una sola cadena de caracteres o la lectura y escritura secuencial de archivos pueden no beneficiarse del uso de múltiples hilos.
    
-  **Carga de trabajo limitada**: Si una tarea no requiere suficientes recursos del sistema para aprovechar al máximo los múltiples núcleos de la CPU, entonces el uso de hilos adicionales puede no mejorar significativamente el rendimiento. En algunos casos, el uso excesivo de hilos puede incluso reducir el rendimiento debido a la sobrecarga y la competencia de recursos. Por ejemplo, un programa que realiza una simple operación de suma en un pequeño conjunto de datos puede no necesitar utilizar múltiples hilos para una ejecución más rápida.

#### Describa las acciones que toma una biblioteca de hilos para cambiar el contexto entre hilos de nivel de usuario.

- **Crea y administra una tabla de control de hilos**: La biblioteca mantiene una tabla de control de hilos que contiene información sobre los hilos en ejecución, como su identificador, estado, contexto y pila.
    
- **Asigna tiempo de CPU**: La biblioteca asigna tiempo de CPU a cada hilo según una política de programación determinada. Cuando un hilo agota su tiempo de ejecución, la biblioteca lo suspende y selecciona otro hilo para ejecutar.
    
-  **Guarda y restaura el contexto del hilo**: Cuando se produce un cambio de contexto, la biblioteca guarda el estado actual del hilo que se está suspendiendo en su pila y restaura el contexto del hilo seleccionado para la ejecución. Esto implica copiar los valores de los registros y punteros de la CPU que definen el estado del hilo.
    
-  **Realiza la sincronización y comunicación entre hilos**: La biblioteca proporciona mecanismos para que los hilos se comuniquen y sincronicen entre sí, como semáforos, mutex, variables de condición, entre otros.
    
-  **Controla la finalización de los hilos**: La biblioteca detecta cuándo un hilo ha terminado su tarea y lo elimina de la tabla de control de hilos. También puede proporcionar una API para que los hilos se unan y esperen a que otros hilos terminen antes de finalizar.

#### Los valores de los registros son componentes del estado de un programa, se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

Los valores de los registros son componentes del estado de un programa que se almacenan en la CPU y representan el estado actual del procesador. En un proceso multihilo, cada hilo tiene su propio conjunto de registros, lo que significa que **los valores de los registros no se comparten directamente entre los hilos.**

Cuando se produce un cambio de contexto entre hilos, la biblioteca de hilos es responsable de guardar el estado del hilo que se está suspendiendo en su pila y restaurar el estado del hilo seleccionado para la ejecución. Esto incluye copiar los valores de los registros de la CPU del hilo que se suspende a su pila y copiar los valores de los registros del hilo seleccionado desde su pila al procesador.

Por lo tanto, aunque los hilos tienen su propio conjunto de registros, la biblioteca de hilos es responsable de asegurar que los valores de los registros se mantengan correctamente sincronizados y que cada hilo tenga acceso al estado correcto de la CPU en el momento adecuado.

#### Los cúmulos de memoria se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

Depende del tipo de memoria a la que se refiere. Hay varios tipos de memoria en un sistema informático, como la memoria caché, la memoria principal y la memoria compartida.

En general, la memoria caché y la memoria principal no se comparten directamente entre hilos de un proceso multihilo, ya que cada hilo tiene su propia caché y espacio de memoria asignado. Sin embargo, algunos procesadores modernos tienen cachés compartidas entre núcleos, lo que permite un mayor grado de compartición de memoria caché entre hilos.

Por otro lado, la memoria compartida es un tipo de memoria que se puede acceder por múltiples hilos o procesos y se utiliza para compartir datos entre ellos. La memoria compartida se comparte directamente entre los hilos de un proceso multihilo y puede ser utilizada para facilitar la comunicación y sincronización entre hilos. En este caso, los hilos pueden acceder a la misma área de memoria compartida, lo que les permite compartir datos y colaborar en la resolución de problemas.

#### Las variables globales se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

**Sí**, las variables globales se comparten entre los hilos de un proceso multihilo. Las variables globales son aquellas que se definen fuera de cualquier función o bloque de código y, por lo tanto, son accesibles desde cualquier parte del programa.

En un proceso multihilo, todos los hilos comparten el mismo espacio de direcciones de memoria del proceso. Por lo tanto, cualquier variable global definida en el proceso es accesible para todos los hilos. Si un hilo modifica el valor de una variable global, ese cambio se reflejará en todos los demás hilos que accedan a la misma variable global.

Es importante tener en cuenta que el acceso simultáneo a una variable global por parte de múltiples hilos puede causar problemas de concurrencia y sincronización, como condiciones de carrera o errores de sincronización. Por lo tanto, es importante que los hilos gestionen el acceso a las variables globales de manera cuidadosa y se utilicen mecanismos de sincronización, como semáforos o mutex, para evitar problemas de concurrencia.

#### La memoria de pila se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

No, la memoria de pila no se comparte entre los hilos de un proceso multihilo. Cada hilo tiene su propia pila de memoria que se utiliza para almacenar las variables locales y los registros de activación de las funciones que se están ejecutando en ese hilo.

Cuando un hilo se crea, se reserva un espacio de memoria de pila separado para ese hilo. Durante la ejecución del hilo, la pila crece y se contrae a medida que se llaman y se regresan funciones. Cada hilo tiene su propio puntero de pila que se utiliza para seguir el estado actual de la pila.

Por lo tanto, los hilos no comparten la memoria de pila. Cada hilo tiene su propio espacio de pila asignado y, por lo tanto, no pueden acceder a las variables locales o registros de activación de otro hilo. Esto asegura que la memoria de pila de un hilo no se vea afectada por las acciones de otro hilo en el mismo proceso.

#### En que ocasiones una solución multihilo que usa múltiples hilos del kernel proporciona mejor rendimiento que un solo hilo sobre un sistema monoprocesador.

-  **Procesamiento intensivo de CPU**: Cuando un proceso realiza tareas intensivas en CPU, como cálculos complejos, la ejecución en paralelo a través de múltiples hilos puede aprovechar el poder de procesamiento de múltiples núcleos de CPU en un sistema multiprocesador. Al ejecutar varios hilos en paralelo, el procesador puede realizar más trabajo en el mismo intervalo de tiempo.
    
-  **E/S intensiva**: Cuando un proceso tiene operaciones intensivas de entrada/salida (E/S), como acceso a disco o red, puede haber una latencia significativa para completar estas operaciones. En lugar de esperar que una operación de E/S se complete antes de iniciar la siguiente, los hilos pueden alternar entre el procesamiento de datos y la realización de operaciones de E/S en segundo plano. Esto puede mejorar la eficiencia general del sistema y reducir los tiempos de espera.
    
-  **Interacciones concurrentes**: Cuando hay varias tareas que interactúan entre sí de manera concurrente, la ejecución en paralelo a través de múltiples hilos puede mejorar el rendimiento. Por ejemplo, si hay varios clientes que solicitan acceso a un servidor, la ejecución en paralelo de múltiples hilos de servidor puede permitir al servidor procesar múltiples solicitudes al mismo tiempo.

#### Puede una solución multihilo que utiliza múltiples hilos de usuario conseguir mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador?

En general, una solución multihilo que utiliza múltiples hilos de usuario puede obtener mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador, ya que los procesadores adicionales pueden utilizarse para ejecutar hilos adicionales en paralelo.

En un sistema de un solo procesador, solo se puede ejecutar un hilo a la vez, y la ejecución de múltiples hilos de usuario requeriría que el procesador conmutara entre los hilos en el nivel de usuario, lo que puede generar una sobrecarga de conmutación de contexto y ralentizar el rendimiento general del sistema.

Sin embargo, en un sistema multiprocesador, cada procesador puede ejecutar hilos adicionales en paralelo, lo que puede mejorar significativamente el rendimiento. Los hilos de usuario pueden ser programados para aprovechar la capacidad de procesamiento adicional disponible en el sistema multiprocesador y distribuir la carga de trabajo en múltiples núcleos de procesador.

#### Suponga que el numero de hilos del usuario es mayor que el numero de procesadores del sistema. Explique el impacto sobre el rendimiento cuando el numero de hilos del kernel asignados al programa es menor que el numero de procesadores.

Cuando el número de hilos del usuario es mayor que el número de procesadores del sistema, y el número de hilos del kernel asignados al programa es menor que el número de procesadores, se producirá una competencia por los recursos de procesamiento disponibles. Esto puede tener un impacto negativo en el rendimiento general del programa y puede resultar en un aumento de los tiempos de espera y una disminución de la eficiencia del sistema.

En esta situación, los hilos del usuario pueden competir por los recursos de procesamiento disponibles en el sistema, lo que puede dar lugar a una sobrecarga de conmutación de contexto y una disminución del rendimiento general del sistema. Además, cuando hay más hilos del usuario que procesadores disponibles, algunos hilos del usuario tendrán que esperar su turno para ser asignados a un procesador. Si el número de hilos del kernel asignados al programa es menor que el número de procesadores, algunos procesadores pueden permanecer inactivos mientras los hilos del usuario esperan para ser asignados, lo que puede disminuir aún más el rendimiento general del sistema.

Para mejorar el rendimiento en esta situación, se pueden tomar varias medidas, como la optimización de los algoritmos para reducir la cantidad de operaciones de E/S o de procesamiento intensivo de CPU, el uso de técnicas de concurrencia para maximizar la utilización de los recursos de procesamiento disponibles, y la reasignación dinámica de hilos del usuario a procesadores disponibles en tiempo real. Es importante tener en cuenta que estas técnicas pueden requerir una gestión cuidadosa para evitar problemas de concurrencia y sincronización y para garantizar un rendimiento óptimo del sistema.
