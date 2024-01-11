//################################################################################
//Procedimiento "intercambiar": Recibe dos números como parámetros de entrada y 
//salida e intercambia sus valores si el segundo es mayor que el primero.
//Parámetros de entrada y salida: dos números
//################################################################################

Funcion intercambiar(mayor Por Referencia, menor Por Referencia)
	Definir aux como Entero;
	Si mayor < menor Entonces
		aux <- mayor;
		mayor <- menor;
		menor <- aux;
	FinSi
FinFuncion


//################################################################################
//Función "calcularMCD": Recibe dos números y devuelve el MCD utilizando el método 
//de Euclides. El método de Euclides es el siguiente:
// * Se divide el número mayor entre el menor.
// * Si la división es exacta, el divisor es el MCD.
// * Si la división no es exacta, dividimos el divisor entre el resto obtenido y 
//   se continúa de esta forma Hasta obtener una división exacta, siendo el último 
//   divisor el MCD.
//Parámetros de entrada: dos números
//Dato devuelto: El MCD
//################################################################################

Funcion mcd <- calcularMCD(num1, num2)
	Definir mcd Como Entero;
	definir resto Como Entero;
	intercambiar(num1, num2);
	resto <- num1 % num2;
	Si resto = 0 Entonces
		mcd <- num2;
	SiNo
		mcd <- calcularMCD(num2, resto);
	FinSi
FinFuncion


//################################################################################
//Procedimiento "leerFraccion": Lee por teclado una fracción (numerador y denominador)
//y lo devuelve como parámetro de entrada y salida.
//Este procedimiento usa simplificarFraccion para simplificar la fracción leída.
//Parámetros de entrada y salida: numerador y denominador 
//################################################################################

Funcion leerFraccion(num Por Referencia, den Por Referencia)
	Escribir sin Saltar "Numerador:";
	Leer num;
	Escribir sin Saltar "Denominador:";
	Leer den;
	simplificarFraccion(num,den);
FinFuncion


//################################################################################
//Procedimiento "simplificarFraccion": Recibe una fracción (numerador y denominador)
//y lo devuelve la fracción simplificada como parámetro ed entrada y salida.
//Para simplificar hay que dividir numerador y dominador por el MCD del numerador 
//y denominador. 
//Parámetros de entrada y salida: numerador y denominador 
//################################################################################

Funcion simplificarFraccion(num Por Referencia, den Por Referencia)
	Definir mcd como Entero;
	mcd <- calcularMCD(num,den);
	num <- num / mcd;
	den <- den / mcd;
FinFuncion


//################################################################################
//Procedimiento "escribirFraccion": Recibe una fracción (numerador y denominador)
//y lo muestra por pantalla. Muestra numerador partido por denominador. Si el
//denominador es 1 sólo muestra el numerador.
//Parámetros de entrada: numerador y denominador 
//################################################################################

Funcion escribirFraccion(num, den)
	Si den <> 1 Entonces
		Escribir num;
		Escribir "---";
		Escribir den;
	SiNo
		Escribir "";
		Escribir num;
		Escribir "";
	FinSi
FinFuncion


//################################################################################
//Procedimiento "sumarFracciones": Recibe dos fracciones (numerador y denominador)
//y devuelve otra fracción que es la suma de la primera y la segunda.
//La suma de dos fracciones es otra fracción cuyo 'numerador = n1 * d2 + d1 * n2' 
//y 'denominador = d1 * d2'.
//Este procedimiento usa simplificarFraccion para simplificar la fracción calculada.
//Parámetros de entrada: numerador1 y denominador1, numerador2 y denominador2
//Parámetros de entrada y salida: numerador y denominador de la fracción resultado
//################################################################################

Funcion sumarFracciones(n1, d1, n2, d2, nr Por Referencia,dr Por Referencia)
	nr <- n1*d2 + d1*n2;
	dr <- d1 * d2;
	simplificarFraccion(nr,dr);
FinFuncion


//################################################################################
//Procedimiento "restarFracciones": Recibe dos fracciones (numerador y denominador)
//y devuelve otra fracción que es la resta de la primera y la segunda.
//La resta de dos fracciones es otra fracción cuyo 'numerador=  n1 * d2 - d1 * n2' 
//y 'denominador = d1 * d2'.
//Este procedimiento usa simplificarFraccion para simplificar la fracción calculada.
//Parámetros de entrada: numerador1 y denominador1, numerador2 y denominador2
//Parámetros de entrada y salida: numerador y denominador de la fracción resultado
//################################################################################

Funcion restarFracciones(n1, d1, n2, d2, nr Por Referencia,dr Por Referencia)
	nr <- n1*d2 - d1*n2;
	dr <- d1 * d2;
	simplificarFraccion(nr,dr);
FinFuncion


//################################################################################
//Procedimiento "multiplicarFracciones": Recibe dos fracciones (numerador y denominador)
//y devuelve otra fracción que es el producto de la primera y la segunda.
//La resta de dos fracciones es otra fracción cuyo 'numerador = n1 * n2' 
//y 'denominador = d1 * d2'
//Este procedimiento usa simplificarFraccion para simplificar la fracción calculada.
//Parámetros de entrada: numerador1 y denominador1, numerador2 y denominador2
//Parámetros de entrada y salida: numerador y denominador de la fracción resultado
//################################################################################

Funcion multiplicarFracciones(n1, d1, n2, d2, nr Por Referencia,dr Por Referencia)
	nr <- n1 * n2;
	dr <- d1 * d2;
	simplificarFraccion(nr,dr);
FinFuncion


//################################################################################
//Procedimiento "dividirFracciones": Recibe dos fracciones (numerador y denominador)
//y devuelve otra fracción que es la división de la primera y la segunda.
//La resta de dos fracciones es otra fracción cuyo 'numerador = n1 * d2' 
//y 'denominador = d1 * n2'
//Este procedimiento usa simplificarFraccion para simplificar la fracción calculada.
//Parámetros de entrada: numerador1 y denominador1, numerador2 y denominador2
//Parámetros de entrada y salida: numerador y denominador de la fracción resultado
//################################################################################

Funcion dividirFracciones(n1, d1, n2, d2, nr Por Referencia,dr Por Referencia)
	nr <- n1 * d2;
	dr <- d1 * n2;
	simplificarFraccion(nr, dr);
FinFuncion


//################################################################################
//Crear un programa que, utilizando las funciones anteriores, muestre un menú para 
//operar con fracciones.
//################################################################################

Proceso Fracciones
	Definir num1, den1, num2, den2, numr, denr Como Entero;
	Definir opcion Como Entero;
	Repetir
		Escribir "1.- Sumar dos fracciones";
		Escribir "2.- Restar dos fracciones";
		Escribir "3.- Multiplicar dos fracciones";
		Escribir "4.- Dividir dos fracciones";
		Escribir "5.- Salir";
		Leer opcion;
		Si opcion<>5 Entonces
			Escribir "Fracción 1: ";
			leerFraccion(num1, den1);
			Escribir "Fracción 2: ";
			leerFraccion(num2, den2);
		FinSi
			
		Segun opcion Hacer
			1:
				Escribir "Sumar fracciones";
				sumarFracciones(num1, den1, num2, den2, numr, denr);
				escribirFraccion(numr, denr);
			2:
				Escribir "Restar fracciones";
				restarFracciones(num1, den1, num2, den2, numr, denr);
				escribirFraccion(numr, denr);
			3:
				Escribir "Multiplicar fracciones";
				multiplicarFracciones(num1, den1, num2, den2, numr, denr);
				escribirFraccion(numr, denr);
			4:
				Escribir "Dicidir fracciones";
				dividirFracciones(num1, den1, num2, den2, numr, denr);
				escribirFraccion(numr, denr);
			5:
			De Otro Modo:
				Escribir "Opción incorrecta.";
		FinSegun
	Hasta Que opcion = 5;
FinProceso
