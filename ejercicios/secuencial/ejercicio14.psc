//################################################################################
//Dado un n�mero de dos cifras, hacer un algoritmo que permita obtener el 
//n�mero invertido. 
//################################################################################
//An�lisis
//Se pide un n�mero de dos cifras y se debe mostrar el n�mero de centenas 
//y de unidades
//Datos de entrada: el n�mero (Entero).
//Informaci�n de salida: primera cifra, segunda cifra (Entero)
//Variables: num, decenas, unidades (Entero)
//################################################################################
//Dise�o
//1. Leer el n�mero de dos cifras (en estos momentos no podemos determinar que el 
//   n�mero es de dos cifras)
//2. Calcular decenas: divisi�n entera del n�mero entre 10.
//3. Calcular unidades: resto de dividir el n�mero entre 10.
//4. Mostrar decenas y unidades
//################################################################################

Proceso CalcularDecenasUnidades
	Definir num, decenas, unidades como Entero;
	Escribir "Dime un n�mero de dos cifras";
	Leer num;
	decenas <- trunc(num/10);
	unidades <- num % 10;
	Escribir "Primera cifra (decenas): ", decenas;
	Escribir "Segunda cifra (unidades): ", unidades;
FinProceso