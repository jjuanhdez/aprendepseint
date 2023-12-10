//################################################################################
//Realizar un programa que compruebe si una cadena le�da por teclado comienza por 
//una subcadena introducida por teclado.
//################################################################################
//An�lisis
//Leo una cadena y una subcadena por teclado. Obtengo la subcadena de la primera
//cadena con la misma longitud que la segunda cadena (uso la funci�n subcadena). 
//Si son iguales significa que la primera cadena comienza por la segunda.
//Datos de entrada: Dos cadenas
//Informaci�n de salida: Mensaje indicando si la primera cadena comienza por 
//                       la segunda o no.
//Variables: cad, sub (Caracter)
//################################################################################
//Dise�o


//################################################################################

Proceso ComienzaPor
	Definir cad, subcad Como Caracter;
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
	Escribir Sin Saltar "Introduce una subcadena:";
	Leer subcad;
	Si Subcadena(cad, 0, Longitud(subcad)-1) = subcad Entonces
		Escribir "La cadena comienza por la subcadena";
	SiNo
		Escribir "La cadena NO comienza por la subcadena";
	FinSi
FinProceso
