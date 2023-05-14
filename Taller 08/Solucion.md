## Taller Investigativo 08
### Juan Pablo Cerinza Zaraza 2190081

#### Por qué es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU?

Es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU porque esto permite al planificador asignar los recursos adecuados para que el programa se ejecute de manera más eficiente y con menor tiempo de espera.

Un programa limitado por I/O, como su nombre indica, está limitado por la velocidad a la que se pueden transferir datos de entrada o salida (por ejemplo, desde o hacia un disco duro). Estos programas tienden a ser más lentos porque pasan la mayor parte del tiempo esperando que se complete la operación de entrada/salida. En este caso, es importante para el planificador asignar suficientes recursos de E/S (como unidades de disco o puertos de red) para que el programa pueda transferir datos de manera más rápida y eficiente.

Por otro lado, un programa limitado por CPU está limitado por la cantidad de ciclos de reloj del procesador que se necesitan para completar el trabajo. Estos programas tienden a ser más intensivos en términos de procesamiento y requieren más tiempo de CPU para completar sus tareas. En este caso, es importante para el planificador asignar suficientes recursos de CPU para que el programa pueda ejecutarse de manera más rápida y eficiente.

#### Como entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de respuesta?

  
En determinadas configuraciones, la utilización de CPU y el tiempo de respuesta pueden entrar en conflicto debido a la forma en que se comparten los recursos del sistema.

Por ejemplo, en un sistema multitarea donde varios procesos comparten la misma CPU, puede haber una situación en la que un proceso intensivo en CPU esté utilizando la mayor parte del tiempo de procesamiento, lo que resulta en una menor capacidad para responder a las solicitudes de entrada/salida de otros procesos. En este caso, los procesos que requieren más tiempo de E/S pueden experimentar un aumento en el tiempo de respuesta y, en última instancia, una disminución en la eficiencia del sistema.

De manera similar, en un sistema de tiempo real donde se deben cumplir plazos específicos, si un proceso intensivo en CPU no cumple con su plazo, puede provocar un incumplimiento de plazos para otros procesos que dependen de su salida, lo que lleva a una disminución en el tiempo de respuesta y en la eficiencia del sistema.

#### Como entran en conflicto en determinadas configuraciones el tiempo medio de procesamiento y tiempo máximo de espera?

En determinadas configuraciones, el tiempo medio de procesamiento y el tiempo máximo de espera pueden entrar en conflicto debido a la forma en que se planifican y administran los recursos del sistema.

Por ejemplo, en un sistema con múltiples procesos en espera para acceder a un recurso compartido, como una cola de impresión, puede haber un conflicto entre el tiempo medio de procesamiento y el tiempo máximo de espera. Si la cola de impresión está diseñada para procesar rápidamente los trabajos de impresión, pero los trabajos en la parte posterior de la cola tienen que esperar demasiado tiempo para imprimir, el tiempo medio de procesamiento será bajo, pero el tiempo máximo de espera será alto. Esto significa que la mayoría de los trabajos se procesarán rápidamente, pero algunos usuarios tendrán que esperar un tiempo excesivo para que sus trabajos se completen.

#### Como entran en conflicto en determinadas configuraciones la utilización de los dispositivos I/O y la utilización de la CPU?

  
En determinadas configuraciones, la utilización de dispositivos de entrada/salida (I/O) y la utilización de la CPU pueden entrar en conflicto debido a la forma en que se comparten los recursos del sistema.

Por ejemplo, cuando un programa realiza una operación de entrada/salida, el procesador suele esperar a que se complete la operación antes de continuar con la siguiente instrucción. En este caso, la CPU puede estar inactiva mientras se lleva a cabo la operación de E/S, lo que reduce la utilización de la CPU y disminuye la eficiencia del sistema.

Por otro lado, si un programa requiere una gran cantidad de procesamiento de la CPU y realiza una gran cantidad de operaciones de E/S, esto puede provocar una competencia entre la CPU y los dispositivos de E/S por el ancho de banda del bus. Esto puede causar cuellos de botella en el rendimiento y una disminución en la eficiencia del sistema.
#### Considere el siguiente conjunto de procesos, todos llegan al mismo tiempo en el orden del subíndice: Dibuje el diagrama de Gantt para FCFS, SJF, por prioridades (# de prioridad baja = a alta prioridad) y RR (cuanto = 1).

- #### FCFS: 
![fcfs](https://github.com/ch0ry/SistemasOperacionales/blob/main/Taller%2008/FCFS.png?raw=true)
	
- #### SJF:

![enter image description here](https://github.com/ch0ry/SistemasOperacionales/blob/main/Taller%2008/SJF.png?raw=true)

- #### Prioridad:
![enter image description here](https://github.com/ch0ry/SistemasOperacionales/blob/main/Taller%2008/PQ.png?raw=true)

- #### Round Robin: 

![enter image description here](https://github.com/ch0ry/SistemasOperacionales/blob/main/Taller%2008/rr.png?raw=true)
	
#### Cual es el tiempo de ejecución de cada proceso para cada algoritmo?

Para todos salvo Round Robin, el tiempo de ejecución de cada proceso es igual al tiempo de ráfaga, que en total suma 19

#### Cual es el tiempo de espera de cada proceso para cada algoritmo?

- FCFS: (0 + 10 + 11 + 13 + 14)/5 = 9.6
- SJF: (0 + 1 + 2 + 4 + 9 )/5 = 3.2 
- Prioridad: (0 + 1 + 6 + 16 + 18)/5 = 8.2
- RR (8.1 + 1 + 4 + 4 + 8.8)/5 = 5.18 

#### Que algoritmo puede dar lugar a bloqueos indefinidos?

El algoritmo Round Robin cuando se tiene un proceso largo, y se le siguen añadiendo más procesos, puede alargar indefinidamente la finalización de un proceso.

De la misma forma, al implementar colas, si la prioridad de un proceso es lo suficientemente baja, puede existir un número indefinido de procesos que deban ser realizados antes de que este empiece.

#### Considere un sistema que implementa una planificación por colas multinivel. Que estrategia puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario?

En un sistema de planificación por colas multinivel, una posible estrategia para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario es utilizar la prioridad adecuada en cada cola.

Cada cola en el sistema multinivel tiene una prioridad asociada y los procesos se asignan a la cola correspondiente según su prioridad. Una posible estrategia para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario es asegurarse de que el proceso tenga la mayor prioridad posible para su nivel en la cola.

Por ejemplo, si un proceso del usuario se encuentra en la cola de menor prioridad, el sistema podría promoverlo a una cola de mayor prioridad para que tenga más tiempo de CPU asignado. De manera similar, si un proceso se encuentra en la cola de mayor prioridad, el sistema podría moverlo a una cola de menor prioridad si ha estado inactivo durante un período de tiempo prolongado.

Otra estrategia es utilizar la planificación por retroalimentación. En este enfoque, cada proceso comienza en la cola de menor prioridad y se mueve a colas de mayor prioridad si no se completa en un tiempo determinado. De esta manera, los procesos que necesitan más tiempo de CPU para completarse se moverán automáticamente a colas de mayor prioridad, lo que les permitirá obtener más tiempo de CPU asignado.

