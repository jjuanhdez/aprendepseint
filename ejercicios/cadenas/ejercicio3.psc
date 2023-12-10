//################################################################################
//Pedir una cadena y un car�cter por teclado (valida que sea un car�cter) 
//y mostrar cuantas veces aparece el car�cter en la cadena.
//################################################################################
//An�lisis
//Leo una cadena y un car�cter (tengo que asegurarme que es un s�lo car�cter,
//es decir hasta que la longitud sea 1). Recorro la cadena y comparo cada uno de
//sus caracteres con el car�cter introducido, si es igual lo cuento.
//Datos de entrada: Cadena y car�cter
//Informaci�n de salida: N�mero de veces que aparece el car�cter en la cadena.
//Variables: cad, car (Caracter), posicion, cont (Entero)
//################################################################################

Proceso ContarCaracter
	Definir cad, car Como Caracter;
	Definir posicion, cont Como Entero;
	cont <- 0;
	Escribir Sin Saltar "Introduce una cadena: ";
	Leer cad;
	Repetir
		Escribir Sin Saltar "Introduce un car�cter: ";
		Leer car;
	Hasta Que Longitud(car) = 1;
	
	Para posicion <- 0 hasta Longitud(cad)-1 Hacer
		Si Subcadena(cad,posicion,posicion) = car Entonces
			cont <- cont + 1;
		FinSi
	FinPara
	Escribir "En la cadena ", cad, " aparece ", cont, " veces el car�cter ", car, ".";
FinProceso
