 <img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=0:007ACC,100:5DADE2&height=260&section=header&text=Agenda%20de%20eventos&desc=Bienvenidos%20usuarios%20a%20mi%20proyecto&fontSize=43&fontColor=ffffff&descSize=18&fontAlignY=38&descAlignY=58&animation=fadeIn"/>

 <p align="justify">Este proyecto, llamado <b>agenda de eventos</b>, fue desarrollado en <b>pseint</b> como un ejercicio práctico para fortalecer la lógica de programación mediante la creación de un sistema de gestión de eventos desde la consola. El programa cuenta con un menú principal de siete opciones que permite <b>registrar, editar, eliminar, buscar, listar y consultar la información completa</b> de los eventos registrados. Cada evento almacena datos como el nombre, la categoría, la fecha, la hora, el lugar, el organizador y el estado, utilizando arreglos con una capacidad máxima de <b>100 eventos durante la ejecución</b>. Durante su desarrollo se aplicaron conceptos fundamentales de programación, como variables, arreglos, estructuras condicionales, ciclos repetitivos y estructuras de selección, además de procesos para buscar, modificar, eliminar y organizar registros. Este proyecto permite poner en práctica los conocimientos adquiridos en PSeInt y sirve como base para desarrollar sistemas de gestión más avanzados utilizando otros lenguajes y tecnologías.</p>

<h2 align="center">⚙️ Funcionamiento del menú principal</h2>

### ➕ Registrar evento

<p align="justify">La opción <b>1) registrar evento</b> permite agregar un nuevo evento al programa. Antes de realizar el registro, el sistema comprueba que la cantidad de eventos almacenados sea menor a <b>100</b>, utilizando la condición <b>total &lt; 100</b>. Si existe espacio disponible, la variable <b>total</b> aumenta en uno y el programa asigna un identificador al nuevo evento mediante la instrucción <b>id[total] &lt;- total</b>. Posteriormente, solicita al usuario el <b>nombre, categoría, fecha, hora, lugar, organizador y estado</b> del evento. Los datos se almacenan en la posición correspondiente de sus respectivos arreglos. Si la agenda alcanza su capacidad máxima, el programa muestra el mensaje <b>"agenda llena."</b> e impide registrar otro evento.</p>

### ✏️ Editar evento

<p align="justify">La opción <b>2) editar evento</b> permite modificar la información de un evento que ya se encuentra registrado. Primero, el programa comprueba si existen eventos almacenados mediante la variable <b>total</b>. Si no hay registros, muestra el mensaje <b>"no hay eventos registrados."</b>. En caso contrario, presenta una lista con el <b>id, nombre, categoría, fecha, hora y estado</b> de cada evento. Después, solicita el identificador del evento que se desea editar y lo busca mediante un ciclo <b>para</b>, comparando el valor introducido con los elementos del arreglo <b>id</b>. La variable <b>pos</b> almacena la posición del evento encontrado. Si el identificador existe, el programa solicita los nuevos datos y actualiza directamente los valores de los arreglos correspondientes. Finalmente, muestra el mensaje <b>"evento actualizado correctamente."</b>. Si no encuentra el identificador, informa que no existe un evento con ese ID.</p>

### 🗑️ Eliminar evento

<p align="justify">La opción <b>3) eliminar evento</b> permite eliminar un evento registrado mediante su identificador. Antes de comenzar, el programa comprueba que existan eventos almacenados. Si hay registros disponibles, muestra una lista con el <b>id, nombre, categoría, fecha, hora y estado</b> de cada evento para facilitar su identificación. Después, solicita el id del evento que se desea eliminar y recorre el arreglo <b>id</b> para encontrar su posición, almacenándola en la variable <b>pos</b>. Si el evento existe y no se encuentra en la última posición, el programa utiliza un ciclo <b>para</b> para desplazar una posición hacia atrás los datos de los eventos posteriores. Este procedimiento se realiza en los arreglos <b>id, nombre, categoria, fecha, hora, lugar, organizador y estado</b>. Una vez completado el proceso, la variable <b>total</b> disminuye en uno y el programa muestra el mensaje <b>"evento eliminado correctamente."</b>. Si no encuentra el ID solicitado, informa que no existe un evento con ese identificador.</p>

### 🔎 Buscar evento

<p align="justify">La opción <b>4) buscar evento</b> permite localizar un evento mediante su <b>id</b>. Primero, el programa solicita el identificador que se desea buscar y establece la variable <b>pos</b> en cero. A continuación, utiliza un ciclo <b>para</b> para recorrer los identificadores almacenados y compararlos con el valor introducido mediante la condición <b>id[i] = idbuscado</b>. Cuando encuentra una coincidencia, guarda la posición correspondiente en la variable <b>pos</b>. Al finalizar el recorrido, si la posición es mayor que cero, muestra el ID, el nombre y la fecha del evento encontrado. En caso contrario, presenta el mensaje <b>"no encontrado."</b>. Esta operación permite consultar rápidamente los datos básicos de un evento a partir de su identificador.</p>

### 📋 Listar eventos

<p align="justify">La opción <b>5) listar eventos</b> permite visualizar los eventos registrados actualmente en el programa. Antes de mostrar la información, el sistema comprueba si la variable <b>total</b> es igual a cero. Si no existen eventos, presenta el mensaje <b>"sin eventos."</b>. Si hay registros disponibles, utiliza un ciclo <b>para</b> para recorrer los arreglos desde la primera posición hasta el número total de eventos registrados. Durante el recorrido, muestra el <b>id, nombre, fecha y estado</b> de cada evento. Esta función facilita consultar los registros existentes sin necesidad de buscar cada evento individualmente.</p>

### 📄 Ver detalles

<p align="justify">La opción <b>6) ver detalles</b> permite consultar toda la información de un evento registrado. Primero, el programa solicita el id del evento que se desea consultar y establece la variable <b>pos</b> en cero. Después, recorre el arreglo <b>id</b> mediante un ciclo <b>para</b> para localizar el identificador solicitado. Si encuentra una coincidencia, almacena su posición en <b>pos</b> y muestra los datos completos del evento: <b>id, nombre, categoría, fecha, hora, lugar, organizador y estado</b>. Si el identificador no corresponde a ningún evento registrado, muestra el mensaje <b>"no encontrado."</b>. Esta opción permite acceder a toda la información almacenada de un evento específico.</p>

### 🚪 Salir del menú principal

<p align="justify">La opción <b>7) salir</b> permite finalizar la ejecución del programa. El menú principal se encuentra dentro de una estructura repetitiva <b>repetir ... hasta que</b>, que mantiene el programa en funcionamiento mientras el usuario realiza las operaciones disponibles. La condición final <b>hasta que opcion=7</b> determina cuándo debe terminar el ciclo. Cuando el usuario selecciona la opción 7, la condición se cumple y el programa finaliza. En el código actual, esta opción no muestra un mensaje adicional de despedida.</p>

<h2 align="center">🧠 Temas aplicados en el proyecto</h2>

### 📦 Variables

<p align="justify">En este proyecto se utilizan para guardar la opción seleccionada en el menú, controlar la cantidad de eventos registrados, recorrer los arreglos, almacenar la posición de un evento encontrado y guardar el identificador que el usuario desea buscar, editar, eliminar o consultar. Cada variable cumple una función específica dentro de las operaciones de gestión de eventos.</p>

🔢 **Opcion:** Almacena la opción seleccionada por el usuario en el menú principal.

📊 **Total:** Almacena la cantidad actual de eventos registrados. 

🔄 **I:** Funciona como contador en los ciclos <b>para</b>.

📍 **Pos:** Almacena la posición del evento cuyo identificador coincide con el valor introducido por el usuario.

🔎 **IdBuscado:** Almacena el identificador introducido por el usuario para seleccionar el evento que desea editar, eliminar, buscar o consultar.

### 🗃️ Arreglos

<p align="justify">En este proyecto se utilizan ocho arreglos relacionados con los identificadores y los datos de cada evento. Cada arreglo tiene una capacidad de <b>100 posiciones</b> y utiliza el mismo índice para representar la información correspondiente a un mismo registro. Por ejemplo, los datos de un evento almacenado en la posición <b>1</b> se encuentran distribuidos entre <b>id[1], nombre[1], categoria[1], fecha[1], hora[1], lugar[1], organizador[1] y estado[1]</b>. Esta organización permite recorrer, buscar, modificar, mostrar y eliminar los registros de manera ordenada.</p>

🆔 **Id[100]:** Almacena los identificadores de los eventos registrados.

📝 **Nombre[100]:** Almacena el nombre de cada evento registrado.

🏷️ **Categoria[100]:** Almacena la categoría correspondiente a cada evento.

📅 **Fecha[100]:** Almacena la fecha de cada evento.

🕒 **Hora[100]:** Almacena la hora programada para cada evento.

📍 **Lugar[100]:** Almacena el lugar donde se realizará cada evento.

👤 **Organizador[100]:** Almacena el nombre del organizador de cada evento.

📌 **Estado[100]:** Almacena el estado asignado a cada evento.

### 🔀 Estructuras condicionales

<p align="justify">En este proyecto se utilizan el <b>si</b> y <b>sino</b> para comprobar si la agenda dispone de espacio antes de registrar un evento, verificar si existen registros antes de editar o eliminar, determinar si un identificador fue encontrado y controlar si es necesario desplazar los datos durante la eliminación. Estas condiciones permiten que el programa responda de manera diferente según el estado de la agenda y el resultado de cada operación.</p>

### 🔄 Estructuras repetitivas

<p align="justify">En este proyecto se utilizan los ciclos <b>para</b> y <b>repetir ... hasta que</b>. Los ciclos <b>para</b> permiten recorrer los arreglos para mostrar los eventos, buscar identificadores y localizar registros. Durante la eliminación, también se utilizan para desplazar los datos de los eventos posteriores una posición hacia atrás. Por otro lado, el ciclo <b>repetir ... hasta que</b> mantiene activo el menú principal para que el usuario pueda ejecutar diferentes operaciones antes de salir del programa.</p>

### 🎯 Estructura segun

<p align="justify">El programa evalúa el valor almacenado en la variable <b>opcion</b> y ejecuta el bloque de instrucciones correspondiente. Cada caso representa una operación específica del sistema: <b>registrar, editar, eliminar, buscar, listar, ver detalles o salir</b>. En el código actual, las opciones están definidas desde el número 1 hasta el número 6 dentro de la estructura <b>segun</b>, mientras que el número 7 permite finalizar el ciclo principal mediante la condición <b>hasta que opcion=7</b>.</p>

### 🔢 Dimensionamiento de arreglos

<p align="justify">El programa utiliza la instrucción <b>dimension</b> para establecer la capacidad de los arreglos que almacenan la información de los eventos. Se definieron <b>100 posiciones</b> para cada arreglo, lo que permite administrar hasta 100 eventos registrados durante la ejecución. La cantidad de posiciones ocupadas se controla mediante la variable <b>total</b>, por lo que las operaciones recorren únicamente los registros comprendidos entre la primera posición y el total actual de eventos.</p>

### 🔄 Reorganización de registros

<p align="justify">Cuando se encuentra el evento que se desea eliminar, el programa comprueba si su posición es menor que el total de eventos. Si se cumple esta condición, utiliza un ciclo <b>para</b> que comienza en la posición del evento eliminado y llega hasta <b>total - 1</b>. En cada repetición, los datos de la posición siguiente se copian sobre la posición actual en los ocho arreglos. Después, la variable <b>total</b> disminuye en uno. De esta manera, los eventos posteriores ocupan las posiciones disponibles sin dejar espacios vacíos entre los registros activos.</p>

<h2 align="center">¿Cómo se implementaron las operaciones crud en el proyecto?</h2>

<p align="justify">Las operaciones <b>crud</b> se implementaron mediante las opciones del menú principal, permitiendo administrar los eventos registrados. La operación <b>crear</b> corresponde a <b>registrar evento</b>, donde se introducen los datos de un nuevo registro; <b>leer</b> se realiza mediante las opciones <b>buscar evento, listar eventos y ver detalles</b>; <b>actualizar</b> corresponde a <b>editar evento</b>, donde se modifican los datos de un evento existente; y <b>eliminar</b> se realiza mediante la opción <b>eliminar evento</b>. Estas operaciones utilizan variables, arreglos, condicionales y ciclos para gestionar la información almacenada temporalmente durante la ejecución del programa.</p>

<h2 align="center">🛡️ Validaciones del programa</h2>

### 📭 No existen eventos registrados

<p align="justify">Esta validación se utiliza en las opciones de <b>editar evento</b> y <b>eliminar evento</b>. El programa comprueba si la variable <b>total</b> es igual a <b>0</b> y, si no existen eventos registrados, muestra el mensaje <b>"no hay eventos registrados."</b>. Esta comprobación evita que se continúe con el proceso de edición o eliminación cuando la agenda está vacía. En las opciones de búsqueda, listado y consulta de detalles, el comportamiento es diferente: cada una presenta su propio resultado sin que todas comprueben previamente si la agenda está vacía.</p>

### ⚠️ Agenda llena

<p align="justify">Esta validación se utiliza durante el registro de nuevos eventos para controlar la capacidad máxima de los arreglos. El programa comprueba si <b>total &lt; 100</b> antes de permitir agregar un nuevo registro. Si existe espacio disponible, aumenta el contador y solicita los datos del evento. En caso contrario, muestra el mensaje <b>"agenda llena."</b> e impide registrar más eventos mientras se mantenga la capacidad máxima.</p>

### ❌ Evento no encontrado

<p align="justify">Esta validación se utiliza cuando el usuario introduce un identificador que no coincide con ninguno de los eventos almacenados durante las operaciones de edición y eliminación. El programa inicializa la variable <b>pos</b> en cero y recorre el arreglo <b>id</b> para buscar una coincidencia. Si encuentra el identificador, guarda su posición. Si al finalizar la búsqueda <b>pos</b> continúa siendo cero, muestra el mensaje <b>"no se encontro un evento con ese id."</b>. En las opciones de búsqueda y consulta de detalles, cuando no se encuentra el evento, el programa muestra el mensaje <b>"no encontrado."</b>.</p>

### 🔢 Identificación de eventos mediante id

<p align="justify">El programa utiliza el identificador almacenado en el arreglo <b>id</b> para localizar los registros. Durante el registro, asigna el valor de <b>total</b> como identificador del nuevo evento. Posteriormente, este identificador se utiliza para buscar, editar, eliminar y consultar la información de los eventos. No obstante, debido a que el identificador se genera utilizando el contador <b>total</b>, después de eliminar un evento y registrar otro pueden producirse identificadores repetidos. El código actual no incluye un contador independiente para garantizar que cada nuevo evento reciba un ID único.</p>

### ⚠️ Opción inválida

<p align="justify">En el código actual, la estructura <b>segun</b> contiene los casos correspondientes a las opciones del 1 al 6, mientras que la opción 7 se utiliza para salir mediante la condición del ciclo principal. No se ha implementado un bloque <b>de otro modo</b> para detectar los números que no corresponden a las opciones disponibles. Por este motivo, cuando el usuario introduce una opción diferente, el programa no muestra un mensaje específico que indique que la opción es inválida.</p>

<h2 align="center">🎯 Objetivo del proyecto</h2>

<p align="justify">El objetivo principal de este proyecto es fortalecer la <b>lógica de programación</b> mediante el desarrollo de un sistema de gestión de eventos en <b>pseint</b>. A través de su construcción se busca aplicar los conocimientos adquiridos sobre variables, arreglos, estructuras condicionales, ciclos repetitivos y estructuras de selección, integrándolos para resolver un problema de manera organizada. Además, el proyecto permite comprender cómo registrar, consultar, modificar y eliminar información en una aplicación de consola, estableciendo una base para desarrollar sistemas de gestión más completos con otros lenguajes y tecnologías.</p>

<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=0:007ACC,100:5DADE2&height=110&section=footer&text=%C2%A9%202026%20%7C%20L%C3%B3gica%20de%20programaci%C3%B3n%20hecha%20en%20pseint%20%7C%20Agenda%20de%20eventos&fontSize=14&fontColor=FFFFFF&fontAlignY=87.5"/>