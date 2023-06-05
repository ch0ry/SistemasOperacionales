
## Taller Investigativo 11
### Juan Pablo Cerinza Zaraza 2190081

#### Explique la diferencia entre los conceptos de fragmentación interna y externa.
La fragmentación interna y externa son dos conceptos utilizados en el ámbito de los sistemas operativos y las bases de datos para describir problemas relacionados con la asignación y gestión de memoria.

La fragmentación interna se refiere a la porción de memoria asignada a un proceso o aplicación que no se utiliza de manera eficiente. Ocurre cuando se asigna un bloque de memoria de tamaño fijo a un proceso, pero este proceso solo utiliza una parte de ese bloque. La parte no utilizada se considera desperdicio de memoria, lo que resulta en una ineficiencia en la utilización de los recursos. La fragmentación interna puede ocurrir tanto en la memoria principal de un sistema operativo como en la memoria asignada a una base de datos.

Por otro lado, la fragmentación externa se refiere a la dispersión de bloques de memoria libres en un sistema o en una base de datos, lo que dificulta la asignación de bloques contiguos de memoria a nuevos procesos o registros. La fragmentación externa puede ocurrir en sistemas de memoria dinámica, donde los bloques de memoria se asignan y liberan a medida que los procesos o las aplicaciones los solicitan. Puede haber suficiente memoria total disponible, pero si está fragmentada en bloques pequeños dispersos, no se puede asignar un bloque lo suficientemente grande para satisfacer las necesidades de un proceso en particular.

#### ¿En que forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria?

El editor de ensamblador cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria de varias maneras:

-   **Asignación de direcciones**: El editor de ensamblador asigna direcciones de memoria a cada instrucción y dato en el programa ensamblador. Cada instrucción y dato tiene una ubicación específica en la memoria.
    
-  **Generación de códigos de operación**: El editor de ensamblador traduce las instrucciones escritas en lenguaje ensamblador a códigos de operación en lenguaje de máquina. Estos códigos de operación representan las operaciones que el procesador debe ejecutar.
    
-  **Generación de referencias de datos**: Cuando se utilizan datos en el programa ensamblador, el editor de ensamblador genera referencias a esos datos mediante etiquetas o direcciones de memoria. Estas referencias indican dónde se encuentran los datos en la memoria y cómo acceder a ellos durante la ejecución del programa.
    
-  **Resolución de referencias**: Durante el proceso de ensamblaje, el editor de ensamblador resuelve las referencias de datos y las reemplaza por las direcciones de memoria correspondientes. Esto asegura que las instrucciones accedan correctamente a los datos en tiempo de ejecución.

#### ¿Que información debe pasar el compilador al editor de montaje para facilitar el acoplamiento de memoria de éste?

Para facilitar el acoplamiento de memoria, el compilador debe proporcionar al editor de ensamblador la siguiente información:

-  **Código fuente**: El compilador debe pasar al editor de ensamblador el código fuente escrito en un lenguaje de programación de alto nivel, como C, C++, Java, entre otros. El código fuente contiene las instrucciones y declaraciones de datos escritas por el programador.
    
- **Tabla de símbolos**: El compilador genera una tabla de símbolos que contiene información sobre los símbolos utilizados en el programa, como nombres de variables, funciones, constantes, etiquetas, entre otros. Esta tabla de símbolos es importante para asociar cada símbolo con su dirección de memoria correspondiente.
    
-  **Información de tipos de datos**: El compilador también debe pasar información sobre los tipos de datos utilizados en el programa, como enteros, caracteres, flotantes, estructuras, etc. Esta información es necesaria para calcular el tamaño de cada dato y asignar direcciones de memoria adecuadas.
    
-  **Información de llamadas a funciones**: Si el programa contiene llamadas a funciones, el compilador debe proporcionar información sobre cómo se pasan los argumentos a las funciones y cómo se devuelven los resultados. Esta información es necesaria para generar el código de ensamblador correcto que maneje las llamadas a funciones.
    
-  **Información de gestión de memoria**: Si el lenguaje de programación utiliza características de gestión de memoria dinámica, como la asignación y liberación de memoria en tiempo de ejecución, el compilador debe pasar información sobre estas operaciones al editor de ensamblador. Esto permite que el editor de ensamblador genere el código adecuado para manejar la memoria dinámica.

#### En el siguiente orden, se tienen cinco particiones de memoria de 100 KB, 500 KB, 200 KB, 300 KB, y 600 KB. ¿Como situarían en memoria una serie de procesos de 212 KB, 417 KB, 112 KB y 426 KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste? ¿Que algoritmo hace el uso más eficiente de la memoria?

1.  **Primer ajuste**: Este algoritmo asigna el primer bloque de memoria disponible que sea lo suficientemente grande para contener el proceso.
       
    -   Primera partición de 100 KB: Sin utilizar.
    -   Segunda partición de 500 KB: Usada (212 KB).
    -   Tercera partición de 200 KB: Usada (112 KB).
    -   Cuarta partición de 300 KB: Sin utilizar.
    -   Quinta partición de 600 KB: Usada (417 KB).
	
	- Queda sin asignación: Proceso de 426 KB.
2.  **Mejor ajuste**: Este algoritmo busca el bloque de memoria disponible más pequeño que sea lo suficientemente grande para contener el proceso.
    
    -   Primera partición de 100 KB: Sin utilizar.
   
    -   Segunda partición de 500 KB: Usada (417 KB).
    -   Tercera partición de 200 KB: Usada (112 KB).
    -   Cuarta partición de 300 KB: Usada (212 KB).
    -   Quinta partición de 600 KB: Usada (426 KB).
 
3.  **Peor ajuste**: Este algoritmo asigna el bloque de memoria disponible más grande para el proceso.
    -   Primera partición de 100 KB: Sin utilizar.
    -   Segunda partición de 500 KB: Usada (212 KB).
    -   Tercera partición de 200 KB: Sin utilizar.
    -   Cuarta partición de 300 KB: Sin utilizar.
    -   Quinta partición de 600 KB: Usada (112 KB).

	- Queda sin asignación: Proceso de 426 KB y 417 KB.

#### La mayoría de OS permiten a los programas asignar más memoria a su espacio de direcciones durante la ejecución. ¿Que se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas?
 #### 1. Asignación contigua de memoria.
  -   **Fragmentación externa mínima**: Para permitir la asignación dinámica de memoria en un esquema de asignación contigua, se necesita un mecanismo para gestionar la fragmentación externa. Esto implica tener un algoritmo de asignación que pueda encontrar bloques contiguos de memoria adecuados para satisfacer las solicitudes de asignación de memoria.
    -   **Reubicación**: Dado que los programas pueden asignar más memoria durante la ejecución, se requiere la capacidad de reubicar el programa en una nueva ubicación de memoria cuando se asigna más espacio. Esto implica actualizar las direcciones de memoria de las instrucciones y los datos en tiempo de ejecución.
    -   **Gestión de liberación de memoria**: Además de la asignación, también se necesita un mecanismo para liberar la memoria cuando ya no es necesaria. Esto implica liberar bloques de memoria contigua y fusionarlos para evitar la fragmentación externa.
  #### 2. Segmentación pura.
 
    
   -   **Tabla de segmentos**: Para permitir la asignación dinámica de memoria en un esquema de segmentación pura, se necesita una estructura de datos como una tabla de segmentos. Esta tabla debe mantener información sobre cada segmento asignado, incluyendo su tamaño, dirección base y límite.
    -   **Asignación y liberación de segmentos**: Se requiere un mecanismo para asignar y liberar segmentos de memoria durante la ejecución de un programa. Esto implica llevar un seguimiento de los segmentos disponibles y asignarlos según las necesidades del programa.
    -   **Reubicación de punteros**: Al asignar o liberar segmentos de memoria, los punteros en el programa deben ser ajustados para reflejar la nueva ubicación de los segmentos.
 #### 3. Paginación pura
    
   -   **Tablas de páginas**: Para soportar la asignación dinámica de memoria en un esquema de paginación pura, se necesitan tablas de páginas que mapeen las direcciones lógicas a direcciones físicas. Estas tablas deben actualizarse dinámicamente a medida que se asigna o libera memoria.
    -   **Asignación y liberación de páginas**: Se requiere un mecanismo para asignar y liberar páginas de memoria durante la ejecución. Esto implica mantener un seguimiento de las páginas libres y asignarlas según sea necesario.
    -   **Actualización de tablas de páginas**: Cuando se asignan o liberan páginas, las tablas de páginas deben actualizarse para reflejar los cambios en la asignación de memoria. Esto implica modificar las entradas de las tablas de páginas correspondientes a las direcciones lógicas afectadas.


#### Compare los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura con respecto a: 

#### 1. Fragmentación externa:
    
   -   **Asignación continua de memoria**: En este esquema, la fragmentación externa puede ser un problema, ya que los programas se asignan en bloques contiguos de memoria. Si los programas se asignan y liberan de manera irregular, pueden quedar espacios vacíos entre ellos, lo que lleva a la fragmentación externa.
    -   **Segmentación pura**: En este esquema, la fragmentación externa puede ser mínima, ya que los segmentos pueden asignarse en cualquier bloque de memoria disponible. Los segmentos pueden estar dispersos en la memoria, lo que reduce la posibilidad de fragmentación externa.
    -   **Paginación pura**: En este esquema, la fragmentación externa es baja o inexistente. Las páginas se asignan de forma independiente y no hay requisitos de contigüidad. Esto reduce la fragmentación externa y permite una mejor utilización de la memoria.
#### 2.  Fragmentación interna:
    
   -   **Asignación continua de memoria**: Este esquema puede tener fragmentación interna debido a que los programas deben asignarse en bloques completos de memoria. Si un programa ocupa menos espacio que el bloque asignado, se desperdicia memoria debido a la fragmentación interna.
    -   **Segmentación pura**: La fragmentación interna puede existir en este esquema si los segmentos son más grandes que el tamaño requerido por el programa. Si un segmento tiene un tamaño fijo y el programa ocupa menos espacio, habrá desperdicio de memoria debido a la fragmentación interna.
    -   **Paginación pura**: La fragmentación interna puede existir en este esquema debido a que las páginas se asignan en unidades fijas y los programas pueden no llenar completamente la última página asignada. Sin embargo, la fragmentación interna tiende a ser menor en comparación con la asignación continua de memoria y la segmentación pura.
#### 3.  Capacidad de compartir código:
    
   -   **Asignación continua de memoria**: Este esquema tiene limitaciones para compartir código, ya que los programas se asignan en bloques contiguos. Si varios programas necesitan acceder y compartir el mismo código, cada programa requeriría su propia copia en memoria.
    -   **Segmentación pura**: Este esquema facilita el compartir código, ya que los segmentos pueden compartirse entre diferentes programas. Varios programas pueden tener acceso al mismo segmento de código, lo que reduce la necesidad de duplicación de código en memoria.
    -   **Paginación pura**: La paginación también facilita el compartir código. Las páginas de código se pueden compartir entre programas, ya que las páginas se asignan de forma independiente. Esto permite que varios programas accedan a la misma página de código en memoria.

#### En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad.
 #### 1. ¿Por qué?
 En un sistema operativo con paginación, un proceso no puede acceder a una zona de memoria que no es de su propiedad debido a que la paginación establece una protección basada en permisos. Cada página de memoria tiene un bit de protección asociado, que indica si el proceso tiene permisos para leer, escribir o ejecutar esa página. Esto se implementa para garantizar la seguridad y la integridad de los procesos.
 #### 2. ¿Como podía el OS permitir el acceso a otras zonas de memoria?
 El sistema operativo puede permitir el acceso a otras zonas de memoria mediante mecanismos como llamadas al sistema o intercambio de datos controlado. Estos mecanismos permiten que los procesos soliciten explícitamente al sistema operativo permisos para acceder a determinadas zonas de memoria que no les pertenecen. El sistema operativo puede verificar los permisos solicitados y, si son apropiados, otorgar acceso temporal a esas zonas de memoria.
 #### 3. ¿Por qué debería o por qué no debería?
 La decisión de permitir o no el acceso de un proceso a otras zonas de memoria depende de los requisitos de seguridad y el diseño del sistema operativo. A continuación, se presentan algunas consideraciones:
    
   -   **Seguridad**: Restringir el acceso a otras zonas de memoria protege la integridad de los procesos y evita que se corrompan o accedan a datos sensibles de otros procesos. Esto es especialmente importante en entornos multiusuario o en sistemas que ejecutan aplicaciones de terceros.
        
   -   **Aislamiento**: Al limitar el acceso a su propia zona de memoria, los procesos pueden funcionar de manera aislada, sin afectar a otros procesos. Esto puede ayudar a prevenir colisiones de datos, conflictos de recursos y mejorar la estabilidad general del sistema.
        
   -   **Comunicación controlada**: Si se requiere que los procesos compartan datos o se comuniquen entre sí, el sistema operativo puede proporcionar mecanismos seguros y controlados para realizar estas operaciones, como colas de mensajes, tuberías o memoria compartida.
        
   -   **Rendimiento**: Permitir un acceso indiscriminado a todas las zonas de memoria puede llevar a problemas de rendimiento y seguridad. Al restringir el acceso, el sistema operativo puede optimizar la administración de la memoria y garantizar un uso eficiente de los recursos.

#### Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.

El mecanismo de paginación y el de segmentación difieren en la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir direcciones virtuales en direcciones físicas. Aquí está la comparación:

Paginación: En un sistema de paginación, se utilizan tablas de páginas para realizar la traducción de direcciones virtuales a direcciones físicas. Las tablas de páginas son estructuras de datos que mapean las páginas virtuales a las páginas físicas correspondientes en la memoria. La cantidad de memoria requerida para las estructuras de producción de direcciones en la paginación depende del tamaño de la memoria virtual y del tamaño de las páginas.

-   Estructuras de producción de direcciones: Se requiere una tabla de páginas por cada proceso en ejecución. El tamaño de cada tabla de páginas depende del tamaño de la memoria virtual dividido por el tamaño de las páginas. Por lo tanto, la cantidad de memoria requerida para las estructuras de producción de direcciones en la paginación es proporcional al tamaño de la memoria virtual.

Segmentación: En un sistema de segmentación, se utilizan tablas de segmentos para realizar la traducción de direcciones virtuales a direcciones físicas. Las tablas de segmentos son estructuras de datos que mapean los segmentos virtuales a los segmentos físicos correspondientes en la memoria. La cantidad de memoria requerida para las estructuras de producción de direcciones en la segmentación depende del número de segmentos y del tamaño de cada segmento.

-   Estructuras de producción de direcciones: Se requiere una tabla de segmentos por cada proceso en ejecución. El tamaño de cada tabla de segmentos depende del número de segmentos utilizados por el proceso. Además, se necesita un descriptor de segmento para cada segmento en uso. El tamaño de cada descriptor de segmento puede variar, pero generalmente contiene información como la dirección base y el límite del segmento. Por lo tanto, la cantidad de memoria requerida para las estructuras de producción de direcciones en la segmentación depende del número y tamaño de los segmentos utilizados por los procesos.

#### ¿Cuales son las direcciones físicas para las siguientes direcciones lógicas?
- **0. 430**: 649
- **1. 10** : 2314
- **2. 500**: No hay, es superior a la longitud para ese segmento
- **3. 400**: 1827
- **4. 112**: No hay, es superior a la longitud para ese segmento
