//################################################################################
//Si tenemos una cadena con un nombre y apellidos, realizar un programa que 
//muestre las iniciales en may�sculas.
//################################################################################
//An�lisis
//Tengo que ir qued�ndome con las primeras letras de cada palabra (las voy 
//concatenando en una variable cadena).
//Me posiciono en la primera letra de la primera palabra, a continuaci�n 
//voy buscando un espacio, recorriendo los posibles espacios que hay entre palabras,
//y qued�ndome con el primer car�cter de la siguiente palabra.
//Datos de entrada: Frase
//Informaci�n de salida: Iniciales
//Variables: cad, iniciales (Caracter), posicion, cont (Entero)
//################################################################################

Proceso GenerarIniciales
	Definir cad Como Caracter;
	Definir posicion Como Entero;
	Definir iniciales Como Caracter;
	iniciales <- "";
	posicion <- 0;
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
	//Recorro los posibles espacios al principio de la cadena
	Mientras Subcadena(cad, posicion, posicion) = " " Hacer
		posicion <- posicion+1;
	FinMientras
	
	//La primera incial es la primera letra de la primera palabra
	iniciales <- concatenar(iniciales, subcadena(cad, posicion, posicion));
	
	//Desde el primer caracter distinto de espacio
	Para posicion <- posicion hasta Longitud(cad)-1 Hacer
		Si Subcadena(cad, posicion, posicion) = " " Entonces
			//No tengo en cuanta los posibles espcaios que haya entre palabras
			Mientras Subcadena(cad, posicion, posicion) = " " Y posicion <= Longitud(cad) Hacer
				posicion <- posicion + 1;
			FinMientras
			//La siguiente inical es la primera letra de la siguiente palabra
			iniciales <- concatenar(iniciales, subcadena(cad, posicion, posicion));
		FinSi
	FinPara
	Escribir "Iniciales:", Mayusculas(iniciales);
FinProceso
