//################################################################################
//El director de una escuela est� organizando un viaje de estudios, y requiere 
//determinar cu�nto debe cobrar a cada alumno y cu�nto debe pagar a la compa��a de 
//viajes por el servicio. La forma de cobrar es la siguiente: 
//si son 100 alumnos o m�s, el costo por cada alumno es de 65 euros; 
//de 50 a 99 alumnos, el costo es de 70 euros, de 30 a 49, es de 95 euros, 
//y si son menos de 30, el costo del alquiler del autob�s es de 4000 euros, 
//sin importar el n�mero de alumnos. 
//Realice un algoritmo que permita determinar el pago a la compa��a de autobuses 
//y lo que debe pagar cada alumno por el viaje.
//################################################################################
//An�lisis
//El precio final del autob�s depende del n�mero de alumnos que participan.
//Si son 100 o m�s alumnos cada alumno paga 65 euros.
//Si son entre 50 y 99 alumnos, cada alumno paga 70 euros.
//Si son entre 30 y 49 alumnos, cada alumno paga 95.
//El precio del autob�s ser� lo que paga cada alumno * el n�mero de alumnos.
//Si son menor de 30 alumnos, el autob�s vale 4000 euros, 
//divido por el n�mero de alumnos sabemos cuanto paga cada uno.
//Datos de entrada: n�mero de alumnos (Entero)
//Informaci�n de salida: Precio del autob�s (Entero), precio por alumno (Real)
//Variables: num_alumnos (Entero), coste_autobus (Entero), coste_por_alumno (Real)
//################################################################################
//Dise�o
//1. Leer n�mero de alumnos
//2. Si el n�mero >= 100 coste por alumno = 65
//3. Si el n�mero >= 50 y <= 99 coste por alumno = 70
//4. Si el n�mero >= 30 y <= 49 coste por alumno = 95
//5. Si el n�mero < 30 coste por alumno = 4000 / n�mero de alumnos
//6. Si el n�mero de alumnos > 0 (valor correcto) calculo 
//   coste_autobus = n�mero alumnos * coste por alumno 
//   y muestro coste_autobus coste por alumnos.
//7. Si el n�mero de alumno <= 0 mostrar mensaje de error
//################################################################################

Proceso CalcularCosteAutobus
	Definir num_alumnos Como Entero;
	Definir coste_por_alumno como Real;
	Definir coste_autobus como Entero;
	Escribir Sin Saltar "�Cu�ntos alumnos participan en la actividad?:";
	Leer num_alumnos;
	Si num_alumnos >= 100 Entonces
		coste_por_alumno <- 65;
	FinSi
	Si num_alumnos >= 50 Y num_alumnos <= 99 Entonces
		coste_por_alumno <- 70;
	FinSi
	Si num_alumnos >= 30 Y num_alumnos <= 49 Entonces
		coste_por_alumno <- 95;
	FinSi
	Si num_alumnos < 30 Y num_alumnos > 0 Entonces
		coste_por_alumno <- 4000/num_alumnos;
	FinSi
	Si num_alumnos > 0 Entonces
		coste_autobus <- num_alumnos * coste_por_alumno;
		Escribir "El coste por alumno es ", coste_por_alumno, " euros.";
		Escribir "El coste del autob�s es ", coste_autobus, " euros.";
	SiNo
		Escribir "El n�mero de alumnos debe ser un valor positivo.";
	FinSi
FinProceso
