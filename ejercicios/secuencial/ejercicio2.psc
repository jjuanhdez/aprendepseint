//################################################################################
//Calcular el per�metro y el �rea de un rect�ngulo dada su base y su altura.
//################################################################################
//An�lisis
//Tenemos que leer la base y la altura del tri�ngulo y calcular el per�metro y el 
//�rea
//Datos de entrada: base (Real), altura (Real)
//Informaci�n de salida: per�metro (Real) y �rea (Real)
//Variables: base, altura, perimetro y area (Real)
//################################################################################
//Dise�o
//1. Leer base y altura
//2. Calcular per�metro(2*base + 2*altura)
//3. Calcular �rea (base * altura
//4. Mostrar per�metro y �rea
//################################################################################

Proceso Rectangulo
	Definir base, altura, perimetro, area Como Real;
	Escribir "Introduce la base:";
	Leer base;
	Escribir "Introduce la altura:";
	Leer altura;
	perimetro <- 2 * base + 2 * altura;
	area <- base * altura;
	Escribir "El per�metro es ", perimetro," y el �rea es ", area;
FinProceso
