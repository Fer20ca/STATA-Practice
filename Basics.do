*Introduction to STATA programing

gen str nombre = "."

gen str apellido = "."

* crea variables de tipo str vacias

gen byte exam1 = . /*es muy distinto crear variables numericas, en estas no tienes que añadir las comillas*/

gen byte exam2 = .


clear /*para usar una nueva base de datos debo de dropear todos mis datos actuales*/

sysuse auto/*cargo la base de datos auto, la famosa mtcars*/

*entonces quiero extraer cierta lista para observar las variables de interes

list make price mpg

list make-mpg /* la barrita sirve para tomar todos los valores, asi como en python, en STATA se usa esto para tomar los valores de las columnas del medio*/

/*enlistar todas las variables que comiencen con m*/

list m* /*toma todos los valores que comiencen con m*/

/*que sucederia si tenemos una database donde mis varibales se encuentran con los valores x1,x2,x3,x4,x5,x6,x7,x8,x9,etc entonces para seleccionar las variables con x de inicial no se usaria el '*' pues eso solo serviria para nombres de columnas en formato str*/ 

list x? /*en este punto sirve el simbolo '?'*/

/* que pasaria si quiero tomar los nomnres de variables con t y n, donde la t fuera al inicio y tuviera alguna n en sus nombres*/

list t*n* /*trunk y turn*/


















