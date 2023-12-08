//################################################################################
//Calcular el perímetro y el área de un rectángulo dada su base y su altura.
//################################################################################
//Análisis
//Tenemos que leer la base y la altura del triángulo y calcular el perímetro y el 
//área
//Datos de entrada: base (Real), altura (Real)
//Información de salida: perímetro (Real) y área (Real)
//Variables: base, altura, perimetro y area (Real)
//################################################################################
//Diseño
//1. Leer base y altura
//2. Calcular perí­metro(2*base + 2*altura)
//3. Calcular área (base * altura
//4. Mostrar perí­metro y área
//################################################################################

Proceso Rectangulo
	Definir base, altura, perimetro, area Como Real;
	Escribir "Introduce la base:";
	Leer base;
	Escribir "Introduce la altura:";
	Leer altura;
	perimetro <- 2 * base + 2 * altura;
	area <- base * altura;
	Escribir "El perímetro es ", perimetro," y el área es ", area;
FinProceso
