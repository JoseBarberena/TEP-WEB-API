Trabajo Práctico Especial WEB 2 


Integrantes: José I Barberena, Totino Noelia Micaela.


E-mails: jibbarberena@gmail.com        noee.totino@gmail.com 


Temática: Relaciones comerciales – Operaciones comerciales.


Descripción: Se realizara un sitio web donde se podrán realizar consultas sobre operaciones comerciales, altas, bajas y modificación de operaciones de clientes.

API RESTful vinculada a la base de datos "web2-2023", se crearon dos tablas nuevas de listado de productos "productos" y de clases de productos "productos_clases" para que la API tenga un sentido mas lógico para que otros puedan utilizarlo. 
   


Accesible mediante la dirección web http://localhost/TPE-WEB2-API/api/recurso

- El recurso utilizado en esta api es: "products"

http://localhost/TPE-WEB2-API/api/recurso/products

- Opcionalmente se puede especificar a continuación el id de un recurso en particular con el siguiente formato:
http://localhost/TPE-WEB2-API/api/recurso/ID



Los parámetros opcionales para acceder a consultas de la API son los siguientes: 

 $sort = $_GET['sort'] ?? "Class"; //Orden por Clase
        $order = $_GET['order'] ?? "asc"; //Orden Ascendente
        $page = (int)($_GET['page'] ?? 1); //Paginado
        $limit = (int)($_GET['limit'] ?? 10); //Paginado
        $filterBy = $_GET['filterBy'] ?? null; //Filtrado por clase
        $filterValue = $_GET['filterValue'] ?? null; //Elección de la clase para filtrar

- sort:  indica que los resultados serán visualizados de forma ordenada por el campo "clase".

- order: Se utiliza combinado con "sort" con los valores "asc" o "desc". Especifica si los resultados se muestran en orden ascendente o descendente. 

- page: Este parámetro se utiliza en combinación con el parámetro "limit". En caso de indicarse en la consulta, debe tomar el valor de un número entero mayor 0 (cero). Por defecto la consulta devuelve la primera página. 
- filterBy: indica el nombre de una columna de la tabla de la base de datos por la cual se filtrarán los resultados. En este caso se permite con la columna "clase". Debe coincidir exactamente con el nombre de una columna de la tabla. En caso de que no se indique, los resultados de la consulta no son filtrados, recupera todos los registros que cumplan con los criterios de consulta. Se utiliza combinado con el valor del parámetro "filterValue".
- filterValue: contiene el valor por el cual serán filtrados los resultados de la consulta. Si no hay ningún registro que coincida con este valor, el resultado de la consulta es un objeto vacío (no devuelve error). 

 

METODOS API

Los metodos a consultar en esta API son GET, PUT, POST, DELETE permitiendo realizar la totalidad de las operaciones de ABM en la base de datos. 


Ejemplo de una consulta GET del recurso "products" con el parametro "2" es:
```
{
    "id_producto": 2,
    "producto": "Calcio",
    "clase": "Vacuno",
    "cantidad": 1,
    "descuento": "2",
    "precio_u": "32"
}
```


RESULTADOS / ERRORES 
Al finalizar una transacción con la API la misma devuelve una colección de registros según corresponda


Ejemplo de error en la consulta:

- Código de respuesta 
            200 => "OK",
            201 => "Created",
            204 => "Non-Authoritative Information",
            400 => "Bad Request",
            404 => "Not found",
            500 => "Internal Server Error"





