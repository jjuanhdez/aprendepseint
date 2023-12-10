//################################################################################
//Escribe un programa que lea un n�mero e indique si es par o impar.
//################################################################################
//An�lisis
//Tenemos que pedir un n�mero por teclado, y comprobar si es par o impar.
//Datos de entrada: n�mero (Entero)
//Informaci�n de salida: Un mensaje de texto indicando si el n�mero es par o impar.
//Variables: num (Entero)
//################################################################################
//Dise�o
//1. Leer el numero
//2. Si el resto de dividir el n�mero entre 2 es igual a 0 el n�mero es par.
//3. En caso contrario es impar
//################################################################################

Proceso CalcularParImpar
	Definir num Como Entero;
	Escribir 'Dime un n�mero: ';
	Leer num;
	Si num MOD 2 = 0 Entonces
		Escribir 'Es par';
	SiNo
		Escribir 'Es impar';
	FinSi
FinProceso

