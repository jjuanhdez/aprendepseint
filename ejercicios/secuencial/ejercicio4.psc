//################################################################################
//Dados dos n�meros, mostrar la suma, resta, divisi�n y multiplicaci�n de ambos.
//################################################################################
//An�lisis
//Tenemos que leer dos n�meros, calcular la suma, resta, multiplicaci�n y divisi�n
//Datos de entrada: Los dos n�meros (Real)
//Informaci�n de salida: suma, resta, multiplicaci�n, divisi�n (Real)
//Variables: num1, num2 (Real). 
//Considero que las salidas no es necesario guardarla en variables.
//################################################################################
//Dise�o
//1. Leer los n�meros
//2. Mostrar la suma, resta, multiplicaci�n y divisi�n
//################################################################################

Proceso Calcular
	Definir num1, num2 Como Real;
	Escribir Sin Saltar "Introduce el n�mero 1:";
	Leer num1;
	Escribir Sin Saltar "Introduce el n�mero 2:";
	Leer num2;
	Escribir "La suma es ", num1+num2;
	Escribir "La resta es ", num1-num2;
	Escribir "El producto es ", num1*num2;
	Escribir "La divisi�n es ", num1/num2;
FinProceso
