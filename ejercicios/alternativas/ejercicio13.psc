//################################################################################
//Escribe un programa que pida una fecha (d�a, mes y a�o) y diga si es correcta.
//################################################################################
//An�lisis
//Pedir un d�a,mes y a�o y comprobar si corresponde a una fecha correcta.
//Para que una fecha sea correcta:
//* El d�a debe ser mayor que 1 y menor que los d�as que tiene el mes indicado.
//* Los d�as del mes de febrero depender�n de si el a�o es bisiesto o no.
//* El mes indicado debe ser mayor o igual que 1 y menor o igual a 12.
//Datos de entrada: una fecha: d�a,mes y a�o (Entero)
//Informaci�n de salida: Si la fecha es correcta o no.
//Variables: dia, mes, year (Entero), 
//	         dias_del_mes (Entero) donde guardamos los d�as que tiene el mes indicado.
//################################################################################
//Dise�o
//1. Leer dia,mes,year
//2. Si el mes es 1, 3, 5, 7, 8, 10, 12 los dias_del_mes = 31
//3. Si el mes es 4, 6, 9, 11 los dias_del_mes = 30
//4. Si el mes es 2: si el a�o es bisiesto, los dias_del_mes = 29 
//   sino los dias_del_mes = 28
//5. Si hemos introducido otro n�mero de mes, mostrar "Fecha incorrecta"
//6. Si el dia < 0 o > dias_del_mes mostrar "Fecha incorrecta"
//7. En otro caso, mostrar "Fecha correcta"
//################################################################################

Proceso FechaCorrecta
	Definir dia, mes, year Como Entero;
	Definir dias_del_mes Como Entero;
	Escribir Sin Saltar "Introduce el dia:";
	Leer dia;
	Escribir Sin Saltar "Introduce el mes:";
	Leer mes;
	Escribir Sin Saltar "Introduce el a�o:";
	Leer year;
	Segun mes Hacer
		1,3,5,7,8,10,12:
			dias_del_mes <- 31;
		4,6,9,11:
			dias_del_mes <- 30;
		2:
			Si (year % 4 = 0 Y NO (year % 100 = 0)) O year % 400 = 0 Entonces
				dias_del_mes <- 29;
			SiNo
				dias_del_mes <- 28;
			FinSi
		De Otro Modo:
				Escribir "Fecha incorrecta";
		FinSegun
		Si dia < 0 O dia > dias_del_mes Entonces
			Escribir "Fecha incorrecta";
		SiNo
			Escribir "Fecha correcta";
		FinSi
FinProceso
