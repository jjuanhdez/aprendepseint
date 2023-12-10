//################################################################################
//Algoritmo "Centrar": Recibe una cadena y la imprime centrada en la pantalla.
//Suponemos que tenemos una pantalla de 80 caracteres de ancho. 
//Para centrar usamos la formula 40 - (Longitud(cad)/2)
//Par�metros de entrada: cadena a imprimir centrada
//################################################################################

Funcion Centrar(cad)	
	Definir i como Entero;
	Para i <- 0 Hasta (40 - (Longitud(cad) / 2)) Hacer
		Escribir Sin Saltar " ";
	FinPara
	Escribir cad;
	//Imprimo un subrayado con "="
	Para i <- 0 Hasta (40 - (Longitud(cad) / 2)) Hacer
		Escribir Sin Saltar " ";
	FinPara
	Para i <- 0 Hasta Longitud(cad)-1 Hacer
		Escribir Sin Saltar "=";
	FinPara
	Escribir "";
FinFuncion

//################################################################################
//Crea un programa "EscribirCentrado", que reciba como par�metro un texto y lo
//escriba centrado en pantalla (suponiendo una anchura de 80 columnas; pista: 
//deber�s escribir 40 - longitud/2 espacios antes del texto). 
//Adem�s subraya el mensaje utilizando el car�cter "=".
//################################################################################

Proceso EscribirCentrado
	Definir mensaje1, mensaje2 Como Caracter;
	mensaje1 <- "Un mensaje centrado";
	Centrar(mensaje1);
	mensaje2 <- "Otro mensaje";
	Centrar(mensaje2);
FinProceso
