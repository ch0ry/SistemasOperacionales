
## Taller Investigativo 12
### Juan Pablo Cerinza Zaraza 2190081

#### Explique el soporte por hardware requerido para implementar la paginación bajo demanda

- **Unidad de gestión de memoria (MMU)**: La MMU es un componente de hardware esencial para la paginación. Su función principal es realizar la traducción de las direcciones virtuales a direcciones físicas. La MMU utiliza las tablas de páginas para buscar y recuperar la traducción correspondiente a una dirección virtual. Además, la MMU también se encarga de administrar los permisos de acceso y realizar la protección de memoria.
    
- **Tablas de páginas**: Las tablas de páginas son estructuras de datos utilizadas para realizar la traducción de direcciones virtuales a direcciones físicas. Estas tablas se almacenan en memoria y se accede a ellas a través de la MMU. Cada entrada de la tabla de páginas contiene información como la dirección base de la página física correspondiente, los permisos de acceso y otros atributos.
    
- **Bit de presencia/ausencia**: Para implementar la paginación bajo demanda, se utiliza un bit de presencia/ausencia en cada entrada de la tabla de páginas. Este bit indica si una página está presente en memoria física o si se encuentra en el almacenamiento secundario (por ejemplo, el disco duro). Cuando se produce un fallo de página (page fault), la MMU detecta que la página solicitada no está presente y genera una interrupción para que el sistema operativo la cargue desde el almacenamiento secundario a la memoria principal.
    
- **Control de interrupciones y excepciones**: El hardware también debe proporcionar mecanismos para manejar las interrupciones y excepciones relacionadas con la paginación. Por ejemplo, cuando se produce un fallo de página, se genera una interrupción para que el sistema operativo tome las medidas necesarias para cargar la página requerida en memoria. Además, el hardware debe permitir el manejo adecuado de otras excepciones, como el acceso a una página no válida o el acceso a una página sin los permisos necesarios.
    
- **Almacenamiento secundario**: Si bien no es un componente exclusivamente de hardware, el sistema debe contar con un medio de almacenamiento secundario (como un disco duro) para almacenar las páginas que no están actualmente en memoria física. Cuando se produce un fallo de página, el sistema operativo debe cargar la página necesaria desde el almacenamiento secundario a la memoria principal.

#### ¿Qué es la característica de copia durante la escritura y en que circunstancias es ventajoso usar estas características?

La característica de "copia durante la escritura" o "copy-on-write" es una técnica utilizada en sistemas operativos y sistemas de gestión de memoria para optimizar el uso de recursos al copiar datos solo cuando sea necesario. Esta característica se aplica comúnmente en situaciones en las que múltiples procesos comparten una región de memoria común.

Cuando se utiliza la característica de copia durante la escritura, al compartir una región de memoria, los procesos comparten la misma memoria física sin realizar copias inmediatas de los datos. Sin embargo, cuando alguno de los procesos intenta modificar o escribir en la región compartida, se produce una copia de los datos en un nuevo espacio de memoria antes de realizar la escritura. Esto permite que cada proceso tenga una copia exclusiva de los datos modificados, evitando así conflictos de escritura y garantizando la integridad de los datos.

#### ¿Cual es el soporte de hardware requerido para implementar las características de copia durante escritura?

- **Unidad de gestión de memoria (MMU):** La MMU es un componente esencial para la implementación de la copia durante la escritura. Su función principal es realizar la traducción de direcciones virtuales a direcciones físicas. La MMU debe ser capaz de distinguir entre páginas de solo lectura y páginas de escritura para permitir la copia durante la escritura cuando sea necesario.
    
- **Bit de solo lectura (Read-Only):** Cada página de memoria debe tener un bit de solo lectura para indicar si la página es de solo lectura o de lectura y escritura. Cuando se comparte una página de memoria entre procesos, inicialmente se establece como solo lectura. Si algún proceso intenta realizar una escritura en una página de solo lectura, se produce una excepción y se activa el mecanismo de copia durante la escritura.
    
- **Mecanismos de interrupción y excepciones**: El hardware debe proporcionar mecanismos para manejar interrupciones y excepciones relacionadas con la copia durante la escritura. Cuando un proceso intenta escribir en una página de solo lectura, se genera una excepción que es capturada por el sistema operativo. El sistema operativo realiza entonces una copia de la página antes de permitir la escritura y actualiza la tabla de páginas para apuntar a la nueva copia.
    
- **Control de permisos de acceso**: El hardware debe permitir el control de permisos de acceso a nivel de página. Esto implica tener bits adicionales en las tablas de páginas que indiquen los permisos de acceso para cada página. Esto permite que se cambie el bit de solo lectura a lectura y escritura cuando se realice la copia durante la escritura.
    
- **Soporte de memoria virtual:** La copia durante la escritura generalmente se implementa en sistemas con soporte de memoria virtual. La memoria virtual proporciona una abstracción de la memoria física y permite compartir páginas de memoria entre procesos sin copiar todos los datos de inmediato.

#### Indique una situación en la que el algoritmo de sustitución de las páginas menos frecuentes utilizadas genere menos fallos de pagina que el algoritmo de sustitución de las paginas más recientemente utilizadas.
  
Una situación en la que el algoritmo de sustitución de las páginas menos frecuentemente utilizadas (LFU, por sus siglas en inglés) genere menos fallos de página que el algoritmo de sustitución de las páginas más recientemente utilizadas (LRU, por sus siglas en inglés) es cuando se produce un patrón de acceso a las páginas en el que algunas páginas son utilizadas muy frecuentemente durante un corto período de tiempo, pero luego dejan de ser accedidas. Mientras tanto, otras páginas son accedidas ocasionalmente pero de manera constante.

En este escenario, el algoritmo LFU tiene una ventaja sobre el algoritmo LRU. El algoritmo LFU se basa en el recuento de la frecuencia de uso de cada página y sustituye aquella página que ha sido accedida con menor frecuencia. Si algunas páginas son accedidas intensivamente durante un breve período de tiempo y luego no vuelven a ser accedidas, el algoritmo LFU identificará estas páginas como menos frecuentes y las sustituirá más rápidamente, evitando así posibles fallos de página en el futuro.

Por otro lado, el algoritmo LRU se basa en la idea de que las páginas utilizadas recientemente tienen más probabilidades de ser utilizadas nuevamente en el futuro. Sin embargo, si algunas páginas fueron intensivamente utilizadas en el pasado pero ya no son accedidas, el algoritmo LRU aún las considerará como páginas "recientes" y las mantendrá en memoria, lo que puede resultar en una mayor probabilidad de fallos de página.

#### Indique una situación en la que el algoritmo de sustitución de las páginas mas frecuentemente utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas.

Una situación en la que el algoritmo de sustitución de las páginas más frecuentemente utilizadas (MFU, por sus siglas en inglés) genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas (LRU, por sus siglas en inglés) es cuando se da un escenario de acceso a páginas con patrones de uso repetitivo.

Si hay un conjunto limitado de páginas que se utilizan de forma recurrente y tienen un alto grado de importancia en el sistem	a, el algoritmo MFU puede ser más efectivo en evitar fallos de página en comparación con el algoritmo LRU.

El algoritmo MFU se basa en la idea de que las páginas que se han utilizado con mayor frecuencia en el pasado reciente tienen más probabilidades de ser utilizadas con frecuencia en el futuro. En una situación donde ciertas páginas se acceden repetidamente y tienen una alta frecuencia de uso, el algoritmo MFU identificará correctamente estas páginas como las más frecuentemente utilizadas y las mantendrá en memoria, evitando así fallos de página.

Por otro lado, el algoritmo LRU se basa en la idea de que las páginas que se han utilizado más recientemente son más propensas a ser utilizadas nuevamente en el futuro. Sin embargo, en un escenario donde las páginas se utilizan repetidamente y tienen una alta frecuencia de uso, el algoritmo LRU puede no ser tan efectivo en mantener esas páginas en memoria, ya que su enfoque principal es reemplazar las páginas menos recientes.

#### Un sistema utiliza un algoritmo de sustitución FIFO para las paginas resientes y un conjunto compartido de marcos libres compuesto por páginas recientemente utilizadas. Si el conjunto compartido de marcos libres se gestiona utilizando la política de sustitución menos recientemente utilizadas. De una respuesta a los siguientes casos:
 #### - Si se produce un fallo de página y la página se encuentra en el conjunto compartidos de marcos libres, ¿cómo puede generarse espacio libre para la nueva página solicitada?
 #### -  Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres, ¿cómo se activa la página residente y cómo se gestiona el conjunto compartido de marcos libres para hacer sitio para la página solicitada?

En el caso de que se produzca un fallo de página y la página solicitada se encuentre en el conjunto compartido de marcos libres, se deben seguir los siguientes pasos para generar espacio libre y activar la página residente:

- Identificar la página solicitada: El sistema operativo detecta que se produjo un fallo de página y determina cuál es la página solicitada que no se encuentra en memoria.
    
- Comprobar si la página solicitada está en el conjunto compartido de marcos libres: Se verifica si la página solicitada se encuentra en el conjunto compartido de marcos libres, que es gestionado utilizando la política de sustitución menos recientemente utilizadas.
    
- Selección de una página a reemplazar del conjunto compartido de marcos libres: Si la página solicitada está en el conjunto compartido de marcos libres, se aplica la política de sustitución menos recientemente utilizadas para seleccionar una página del conjunto compartido que sea menos reciente en términos de uso. Esta página será reemplazada para hacer espacio para la nueva página solicitada.
    
- Activación de la página residente: La página residente que se encontraba en el conjunto compartido de marcos libres es activada y se coloca en un marco libre en memoria principal. Esto implica actualizar las estructuras de datos correspondientes, como la tabla de páginas, para reflejar que la página ahora está en memoria y su ubicación física.
    
- Actualización del conjunto compartido de marcos libres: Después de que se activa la página residente, el conjunto compartido de marcos libres se actualiza para reflejar que la página reemplazada es ahora la más recientemente utilizada y las demás páginas se desplazan según su antigüedad de uso.


#### Considere un sistema de paginación bajo demanda con las siguientes tasas de utilización:
**◦ Uso de CPU
20%
◦ Paginación de disco
97,7%
◦ Otros dispositivos de I/O
5%
Para las siguientes afirmaciones, indique si permitirá o es probable que permita mejorar las
tasas de utilización de la CPU. De razones para su respuesta.**

Para determinar si cada una de las acciones mencionadas permitirá o es probable que permita mejorar las tasas de utilización de la CPU, se analizará el impacto de cada acción en relación con las tasas de utilización mencionadas:

- **Instalar una CPU más rápida**:
    
    -   Esta acción podría mejorar la tasa de utilización de la CPU, ya que una CPU más rápida puede procesar las instrucciones de manera más eficiente y permitir un mayor rendimiento. Sin embargo, la mejora en la tasa de utilización de la CPU dependerá de otros factores del sistema, como la disponibilidad y el rendimiento de otros componentes.
- **Instalar un disco de paginación de mayor tamaño**:
    
    -   Esta acción no tendría un impacto directo en la tasa de utilización de la CPU. Un disco de paginación de mayor tamaño simplemente proporciona más espacio de almacenamiento para las páginas que se intercambian entre la memoria principal y el disco, pero no afecta directamente la capacidad de la CPU para ejecutar instrucciones.
- **Incrementar el grado de multiprogramación:**
    
    -   Incrementar el grado de multiprogramación, es decir, permitir que más procesos se ejecuten simultáneamente, puede mejorar la tasa de utilización de la CPU. Al permitir que más procesos se ejecuten, se reduce el tiempo de inactividad de la CPU y se aprovecha mejor su capacidad de procesamiento.
- **Instalar más memoria principal:**
    
    -   Esta acción puede mejorar significativamente la tasa de utilización de la CPU. Al tener más memoria principal disponible, se reducirá la necesidad de paginar constantemente entre la memoria principal y el disco, lo que disminuirá los tiempos de espera y mejorará la eficiencia de la CPU al acceder a los datos necesarios.
- **Instalar un disco duro más rápido:**
    
    -   Esta acción podría tener un impacto positivo en la tasa de utilización de la CPU en ciertas situaciones, especialmente si la paginación de disco es un cuello de botella en el sistema. Un disco duro más rápido permitirá una transferencia de datos más rápida entre la memoria principal y el disco, lo que podría reducir los tiempos de espera y mejorar el rendimiento general del sistema.

