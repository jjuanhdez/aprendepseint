//################################################################################
//Suponiendo que hemos introducido una cadena por teclado que representa una frase 
//(palabras separadas por espacios), realizar un programa que cuente cuantas 
//palabras tiene.
//################################################################################
//An�lisis
//Contando cuantos espacios hay en la frase, tendr� el n�mero + 1 de palabras.
//No debo contar los espacios que pueda haber antes de la primera palabra, y los 
//espacios al final de la frase. Adem�s si entre palabras hay varios espacios s�lo
//puedo contar 1.
//Datos de entrada: Frase
//Informaci�n de salida: Contador de palabras
//Variables: cad (Caracter), posicion, cont (Entero)
//################################################################################

Proceso ContarPalabras
	Definir cad Como Caracter;
	Definir posicion, cont Como Entero;
	cont <- 0;
	posicion <- 0;
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
	//Recorro los posibles espacios al principio de la cadena
	Mientras Subcadena(cad, posicion, posicion) = " " Hacer
		posicion <- posicion + 1;
	FinMientras
	
	//Desde el primer caracter distinto de espacio
	Para posicion <- posicion hasta Longitud(cad)-1 Hacer
		Si Subcadena(cad, posicion, posicion) = " " Entonces
			cont <- cont + 1;
			//No tengo en cuenta los posibles espacios que haya entre las palabras
			Mientras Subcadena(cad, posicion, posicion) = " " Y posicion <= Longitud(cad) Hacer
				posicion <- posicion + 1;
			FinMientras
		FinSi
	FinPara
	
	//Si no acaba en espacios tengo que contar la �ltima palabra
	Si subcadena(cad, Longitud(cad)-1, Longitud(cad)-1) <> " " Entonces
		cont <- cont + 1;
	FinSi
	Escribir "La frase tiene ", cont, " palabras.";
FinProceso
