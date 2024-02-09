
/* LOS IF STATEMENTS*/

list make mpg if mpg==25


     | make            mpg |
     |---------------------|
 44. | Plym. Horizon    25 |
 55. | BMW 320i         25 |
 61. | Honda Accord     25 |
 72. | VW Rabbit        25 |
 73. | VW Scirocco      25 |
     +-----

/* se nos devuelven los valores de los mpg iiguales a 25 y sus correpondientes hacedores en el caso de fabircanes*/

/*ojito*/

list make mpg if !(mpg>25) /*enlisto los fabricadores de callos cuyo mpg no supera los 25*/

/* ahora no solo se puede usar una condicion para llamar a lo que se desea,
con & y | podemos delimitar mejor el juego de condicionales que se desea*/

list make mpg price if mpg==25 & price<5000
     +-----------------------------+
     | make            mpg   price |
     |-----------------------------|
 44. | Plym. Horizon    25   4,482 |
 72. | VW Rabbit        25   4,697 |
     +-----------------------------+
	 
list make mpg price if mpg==25 | price<5000


/*SORT STATEMENTS*/

/* by used to run comand separately across groups*/

by foreign:l make foreign

/*separa la varabiale categorica foreign en domesic y foreign y muestra mabas tablas */


bysort foreign rep78:l make

/*by sirve solo si es dummy o categorica en str, pero si tiene codigo numerico entonces es necesario el bysort*/




