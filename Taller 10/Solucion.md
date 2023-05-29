## Taller Investigativo 010
### Juan Pablo Cerinza Zaraza 2190081

#### Considere la imagen, demuestre que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen.


1.  **Exclusión mutua**: Cada carril de la carretera es un recurso exclusivo que solo un vehículo puede ocupar a la vez. Si un vehículo se encuentra en un carril y no puede moverse debido a algún obstáculo o congestión en su camino, bloqueará el acceso a ese carril para otros vehículos que intenten ocuparlo.
    
2.  **Retención y espera**: Supongamos que los vehículos necesitan ocupar varios carriles para avanzar hacia su destino. Si un vehículo ya ha ocupado uno o más carriles y se encuentra en espera de los carriles restantes para continuar su trayecto, pero los otros carriles están ocupados por otros vehículos que también están esperando, se crea una situación de posesión y espera. Ningún vehículo puede liberar los carriles que posee hasta que obtenga los carriles adicionales que necesita, lo que resulta en un bloqueo de los recursos requeridos.
    
3.  **Sin desalojo**: Los vehículos no pueden tomar posesión de carriles que ya están siendo ocupados por otros vehículos. Si un vehículo necesita acceder a un carril que está siendo utilizado por otro vehículo, debe esperar hasta que ese carril esté disponible para su uso. Si varios vehículos están esperando los carriles ocupados por otros, puede generarse un bloqueo donde ningún vehículo pueda avanzar debido a la falta de disponibilidad de los recursos.
    
4.  **Espera circular**: Se produce una espera circular cuando hay un ciclo de vehículos esperando para acceder a los carriles que están siendo ocupados por otros vehículos en el ciclo. Por ejemplo, el vehículo A está esperando acceder al carril ocupado por el vehículo B, el vehículo B está esperando acceder al carril ocupado por el vehículo C, el vehículo C está esperando acceder al carril ocupado por el vehículo D, y el vehículo D está esperando acceder al carril ocupado por el vehículo A. Esta situación de espera circular crea un bloqueo mutuo, donde ningún vehículo puede avanzar debido a la espera de los recursos que están siendo ocupados por otros vehículos.

#### Considere la imagen, enuncie una regla simple para evitar los interbloqueos en este sistema.

"*Los vehículos deben solicitar los carriles en un orden específico y solo pueden ocuparlos si están disponibles de manera continua, evitando la espera circular*".

Esta regla implica que los vehículos deben seguir un orden predefinido para solicitar los carriles. Por ejemplo, podríamos establecer un orden ascendente de los carriles numerados del 1 al 4. Los vehículos solo pueden solicitar y ocupar el siguiente carril en el orden establecido una vez que hayan liberado todos los carriles anteriores.

#### Explique como se cumplen las condiciones básicas de interbloqueo en el problema de la cena de los filósofos.

1.  **Exclusión mutua**: Cada filósofo necesita dos tenedores para poder comer. Si un filósofo toma un tenedor y luego espera a que el otro tenedor esté disponible, puede darse el caso de que todos los filósofos tomen su tenedor izquierdo al mismo tiempo y queden bloqueados permanentemente, ya que nadie puede tomar el tenedor derecho debido a la exclusión mutua.
    
2.  **Retención y espera**: En la cena de los filósofos, cada filósofo debe poseer su tenedor izquierdo antes de intentar tomar el tenedor derecho para poder comer. Si un filósofo toma su tenedor izquierdo y espera indefinidamente a que el tenedor derecho esté disponible, bloqueará el acceso a ese tenedor para los otros filósofos que también necesitan ese tenedor para comer.
    
3.  **Sin desalojo**: Los filósofos no pueden apropiarse de tenedores que ya están siendo utilizados por otros filósofos. Si un filósofo necesita el tenedor derecho y otro filósofo ya lo está utilizando, el primer filósofo debe esperar hasta que el tenedor esté disponible para su uso. Si todos los filósofos toman su tenedor izquierdo y esperan a que el tenedor derecho esté disponible, ninguno de ellos podrá avanzar y se producirá un interbloqueo.
    
4.  **Espera circular**: En la situación de la cena de los filósofos, se puede crear una espera circular si todos los filósofos toman su tenedor izquierdo y esperan al tenedor derecho que está ocupado por su vecino. Por ejemplo, si el Filósofo 1 tiene el tenedor izquierdo y el Filósofo 2 tiene el tenedor derecho, el Filósofo 2 necesita el tenedor izquierdo que está ocupado por el Filósofo 5, y así sucesivamente. Esto crea un ciclo de espera donde los filósofos quedan bloqueados y no pueden continuar con la cena.

#### Explique como podría evitarse los interbloqueos impidiendo que se cumpla una de las condiciones en el problema de la cena de los filósofos.

Para evitar los interbloqueos en el problema de la cena de los filósofos, se puede implementar una estrategia que impida que se cumpla una de las condiciones básicas de interbloqueo. Existen varias soluciones conocidas para abordar este problema. Una de las soluciones más comunes es la denominada "solución del comensal meticuloso".

En la solución del comensal meticuloso, se introduce una restricción adicional que limita la cantidad de filósofos que pueden tomar tenedores simultáneamente. Por ejemplo, se puede establecer un límite de cuatro filósofos, lo que significa que solo cuatro filósofos pueden tomar tenedores al mismo tiempo.

Cuando un filósofo quiere comer, debe asegurarse de que los dos tenedores necesarios estén disponibles. Sin embargo, si los cuatro tenedores ya están ocupados por otros filósofos, el filósofo debe esperar sin tomar ningún tenedor.

Esta solución garantiza que, incluso si todos los filósofos toman sus tenedores izquierdos al mismo tiempo, solo cuatro de ellos podrán tomar el tenedor derecho y comer, mientras que el quinto filósofo deberá esperar. Una vez que uno de los comensales ha terminado de comer y libera sus tenedores, el filósofo en espera puede tomar los tenedores recién liberados y comenzar a comer.


#### Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tiempo de ejecución adicional necesario. 

En comparación con los esquemas de evasión de interbloqueo, el esquema de espera circular tiene una desventaja significativa en términos de tiempo de ejecución adicional necesario. Veamos cómo se compara con algunos de los esquemas comunes de evasión de interbloqueo:

-  **Algoritmo del banquero**: El algoritmo del banquero es un enfoque de evasión de interbloqueo que utiliza una estrategia de asignación de recursos segura para evitar la formación de interbloqueos. Este algoritmo requiere una planificación y control más complejos por parte del sistema operativo para determinar si una solicitud de recursos puede llevar a un estado inseguro o de interbloqueo. Si se detecta que una solicitud resultará en un interbloqueo, el algoritmo del banquero evita la asignación y espera hasta que se pueda asignar de manera segura. En términos de tiempo de ejecución adicional, el algoritmo del banquero puede requerir cierto tiempo adicional para el cálculo y la verificación de la asignación segura de recursos, pero generalmente es más eficiente que el esquema de espera circular.
    
-  **Evitación mediante detección de recursos**: Este enfoque implica un análisis dinámico de las solicitudes de recursos para detectar posibles interbloqueos antes de que ocurran. Se utilizan algoritmos como el algoritmo del grafo de asignación de recursos (RAG) para identificar ciclos en las solicitudes de recursos y prevenirlos. Si se detecta un posible interbloqueo, se toman medidas para evitarlo, como la liberación de algunos recursos o la denegación de solicitudes que puedan causar el interbloqueo. Si bien la detección de recursos puede requerir cierto tiempo adicional para el análisis y la toma de decisiones, generalmente es más eficiente que el esquema de espera circular en términos de tiempo de ejecución adicional.
    
-  **Prevención**: La prevención del interbloqueo implica la eliminación de una o más condiciones necesarias para el interbloqueo. Se pueden utilizar técnicas como asignación de recursos ordenada, asignación de recursos exhaustiva o asignación de recursos basada en prioridades para garantizar que no se cumplan las condiciones de interbloqueo. Estos enfoques requieren cierta planificación y diseño cuidadosos del sistema para garantizar que las condiciones de interbloqueo no se presenten en primer lugar. En términos de tiempo de ejecución adicional, la prevención puede requerir un costo inicial de planificación y diseño, pero una vez implementado, no implica un tiempo adicional significativo durante la ejecución.


#### Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tasa de procesamiento del sistema. 

-  **Algoritmo del banquero**: El algoritmo del banquero permite una mejor utilización de los recursos y, por lo tanto, tiene una tasa de procesamiento más alta en comparación con el esquema de espera circular. Al calcular y verificar la asignación segura de recursos, el algoritmo del banquero puede asignar recursos de manera óptima, evitando situaciones de interbloqueo y maximizando la cantidad de procesos que pueden ser atendidos simultáneamente.
    
-  **Evitación mediante detección de recursos**: La evitación de interbloqueo mediante la detección de recursos también permite una mejor utilización de los recursos y, por lo tanto, tiene una tasa de procesamiento más alta que el esquema de espera circular. Al analizar dinámicamente las solicitudes de recursos y evitar posibles interbloqueos, este enfoque permite que más procesos avancen y sean atendidos en el sistema.
    
-  **Prevención**: La prevención del interbloqueo, al eliminar las condiciones necesarias para el interbloqueo, permite un alto grado de tasa de procesamiento del sistema. Al diseñar y planificar el sistema de manera que no se presenten situaciones de interbloqueo, se evita la necesidad de esperar y liberar recursos, lo que mejora significativamente la tasa de procesamiento del sistema.


#### Considere un sistema que tiene cuatro recursos del mismo tipo, compartidos entre tres procesos; cada proceso necesita como máximo dos recursos. Demuestre que el sistema esta libre de interbloqueos. 

Para demostrar que el sistema está libre de interbloqueos, podemos utilizar el enfoque del banquero para el manejo de recursos. El enfoque del banquero implica simular diferentes asignaciones de recursos y verificar si se puede cumplir la asignación de recursos de todos los procesos sin llegar a un estado de interbloqueo. En este caso, tenemos tres procesos y cuatro recursos disponibles.

Comencemos por suponer que todos los procesos solicitan inicialmente sus recursos máximos, es decir, dos recursos cada uno. En ese caso, se necesitarían un total de 6 recursos, lo cual supera la cantidad disponible de 4 recursos.

Sin embargo, para evitar un estado de interbloqueo, podemos seguir la estrategia del banquero y hacer que los procesos soliciten los recursos de manera incremental, asegurándonos de que se cumpla la asignación segura en todo momento.

Consideremos la siguiente secuencia de solicitudes de recursos:

1.  El Proceso 1 solicita 1 recurso.
2.  El Proceso 2 solicita 1 recurso.
3.  El Proceso 3 solicita 2 recursos.
4.  El Proceso 1 solicita 1 recurso adicional.
5.  El Proceso 2 solicita 1 recurso adicional.

En este punto, cada proceso ha recibido sus recursos máximos, y se ha asignado un total de 6 recursos, que es la cantidad máxima posible en este sistema.

#### Considere el problema de los filósofos, los palillos se colocan en el centro de la mesa y cualquier filósofo puede usar dos palillos, la solicitud de los palillos se hace de una en una. Describa una regla simple para determinar si una solicitud podría ser satisfecha sin dar lugar a interbloqueos, dada la asignación actual de palillos a los filósofos. 

***Si ambos palillos necesarios están disponibles, el filósofo puede tomar ambos palillos y comenzar a comer.***

Esta regla simple garantiza que un filósofo solo intente tomar un palillo si ambos palillos necesarios están disponibles, lo que evita la posibilidad de formar interbloqueos. Si uno de los palillos no está disponible, el filósofo deberá esperar antes de intentar tomarlo nuevamente. Al liberar el palillo que ya ha tomado, el filósofo permite que otros filósofos que puedan tener acceso a los palillos necesarios los obtengan y evita la espera circular que puede llevar a un interbloqueo.



#### Cual es la suposición optimista realizada en el algoritmo de detección de interbloqueos y como podría violarse esta suposición?

La suposición optimista realizada en el algoritmo de detección de interbloqueos es que cada proceso obtendrá todos los recursos que necesita antes de comenzar su ejecución. Esta suposición se basa en la idea de que los procesos no realizarán solicitudes adicionales de recursos una vez que hayan comenzado su ejecución.

Sin embargo, esta suposición puede violarse en situaciones en las que un proceso solicita recursos adicionales después de haber comenzado su ejecución. Esto puede suceder si un proceso adquiere inicialmente algunos recursos y luego solicita más recursos mientras continúa su ejecución. Si esto ocurre, se viola la suposición optimista y puede surgir un interbloqueo.

Cuando un proceso solicita recursos adicionales después de comenzar su ejecución, el algoritmo de detección de interbloqueos puede no ser capaz de detectar y prevenir el interbloqueo, ya que se basa en la suposición de que los procesos no realizarán solicitudes adicionales una vez que hayan comenzado. Esto puede conducir a una asignación insegura de recursos y, finalmente, a un estado de interbloqueo.
