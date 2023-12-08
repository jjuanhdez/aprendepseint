//################################################################################
//Pedir al usuario dos n�meros y mostrar la "distancia" entre ellos 
//(el valor absoluto de su diferencia, de modo que el resultado sea siempre positivo).
//################################################################################
//An�lisis
//Se piden dos n�meros y se calcula el valor absoluto de la diferencia.
//Datos de entrada: dos n�meros (Entero).
//Informaci�n de salida: distancia (Entero).
//Variables: num1, num2 (Entero).
//################################################################################
//Dise�o
//1. Leer los dos n�meros.
//2. Mostrar distancia (valor absoluto de la diferencia)
//################################################################################

Proceso CalcularDistancia
	Definir num1, num2 como Entero;
	Escribir "Dime el n�mero1:";
	Leer num1;
	Escribir "Dime el n�mero2:";
	Leer num2;
	Escribir "Distancia:", abs(num1-num2);
FinProceso