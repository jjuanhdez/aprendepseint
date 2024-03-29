//################################################################################
//Funci�n "esBisiesto": Recibe un a�o y devuelve si es o no bisiesto
//Par�metros de entrada: a�o
//Dato devuelto: Valor l�gico indicando si es bisiesto (Verdadero) o no (Falso)
//################################################################################

Funcion bisiesto <- esBisiesto(year)
	Definir bisiesto Como Logico;
	Si (year % 4 = 0 Y No (year % 100 = 0)) O year % 400 = 0 Entonces
		bisiesto <- Verdadero;
	SiNo
		bisiesto <- Falso;
	FinSi
FinFuncion

//################################################################################
//Funci�n "diasDelMes": Recibe un mes y un a�o y devuelve el n�mero de d�as que 
//tiene ese mes en ese a�o. Necesita la funci�n "esBisiesto"
//Par�metros de entrada: mes y a�o
//Dato devuelto: D�as del mes en ese a�o
//################################################################################

Funcion dias <- diasDelMes(month, year)
	Definir dias Como Entero;
	Segun month Hacer
		1,3,5,7,8,10,12:
			dias <- 31;
		4,6,9,11:
			dias <- 30;
		2:
			Si esBisiesto(year) Entonces
				dias <- 29;
			SiNo
				dias <- 28;
			FinSi
	FinSegun
FinFuncion

//################################################################################
//Funci�n "calcularDiaJuliano": Recibe un d�a, mes y a�o y devuelve el d�a juliano
//correspondiente a esa fecha. El d�a juliano correspondiente a una fecha es un 
//n�mero entero que indica los d�as que han transcurrido desde el 1 de enero del 
//a�o indicado. Depende de la funci�n "diasDelMes"
//Par�metros de entrada: d�a, mes y a�o
//Dato devuelto: D�a juliano
//################################################################################

Funcion diaj <- calcularDiaJuliano(day,month,year)
	Definir mes Como Entero;
	Definir diaj Como Entero;
	diaj <- 0;
	Para mes <- 1 Hasta month-1 Hacer
		diaj <- diaj + diasDelMes(mes,year);
	FinPara
	diaj <- diaj + day;
FinFuncion

//################################################################################
//Funci�n "diasDesde1900": Recibe un d�a, mes y a�o y devuelve los d�as  
//transcurridos desde 1900. Por cada a�o se acumula 365 o 366 d�as, 
//y del �ltimo a�o se acumula el d�a juliano
//Par�metros de entrada: d�a, mes y a�o
//Dato devuelto: D�as desde 1900
//################################################################################

Funcion dias <- diasDesde1900(day, month, year)
	Definir dias Como entero;
	Definir a Como Entero;
	dias <- 0;
	Para a <- 1900 Hasta year-1 Hacer
		Si esBisiesto(a) Entonces
			dias <- dias +366;
		SiNo
			dias <- dias +365;
		FinSi
	FinPara
	dias <- dias + calcularDiaJuliano(day, month, year);
FinFuncion

//################################################################################
//Funci�n "devolverNombreMes": Recibe un mes y devuelve el nombre del mes indicado.
//Par�metros de entrada: mes
//Dato devuelto: Nombre del mes
//################################################################################

Funcion nombremes <- devolverNombreMes(month)
	Definir nombremes Como Caracter;
	Segun month Hacer
		1:
			nombremes <- "Enero";
		2:
			nombremes <- "Febrero";
		3:
			nombremes <- "Marzo";
		4:
			nombremes <- "Abril";
		5:
			nombremes <- "Mayo";
		6:
			nombremes <- "Junio";
		7:
			nombremes <- "Julio";
		8:
			nombremes <- "Agosto";
		9:
			nombremes <- "Septiembre";
		10:
			nombremes <- "Octubre";
		11:
			nombremes <- "Noviembre";
		12:
			nombremes <- "Diciembre";
	FinSegun
FinFuncion

//################################################################################
//Procedimiento "Calendario": Recibe un mes y un a�o e imprime el calendario de ese
//mes .Necesitamos calcular los d�as del mes, los d�as desde 1900 al 1 del mes y a�o 
//indicados, y una vez calculado le hacemos el m�dulo 7 y el n�mero obtenido ser� 
//el d�a de la semana (0: domingo, 1: lunes, ...) (Tenemos que transformarlo para 
//que el 0 sea lunes.
//Escribimos espacios para desplazar el d�a 1 a la posici�n correspondiente, 
//desde el d�a 1 Hasta el �ltimo d�a del mes, vamos colocando los dem�s d�as
//teniendo en cuanta que cada 7 d�as colocados tenemos que hacer un salto de l�nea.
//Par�metros de entrada:  mes y a�o
//################################################################################

Funcion Calendario(month, year)
	Definir dias_mes, dia1, indice Como Entero;
	//Calculamos los d�as del mes y a�o indicados.
	dias_mes <- diasDelMes(month, year);
	//Calculamos los d�as transcurridos desde 1/1/1900 al 1 del mes a�o indicados.
	dia1 <- diasDesde1900(1, month, year);
	//Calculamos el resto de la divisi�n entre 7 (0: domingo, 1: lunes, ...)
	dia1 <- dia1 % 7;
	//Lo transformo para que el lunes sea el de la posici�n 0 y el domingo el 6
	dia1 <- dia1 -1;
	Si dia1 = -1 Entonces
		dia1 <- 6;
	FinSi
	//Mostramos el nombre del mes y el a�o
	Escribir "";
	Escribir devolverNombreMes(month), " de ", year;
	Escribir "";
	Escribir " L   M   M   J   V   S   D";
	Escribir "==========================";
	//Escribo espacios Hasta el d�a de la semana para desplazar la colocaci�n del primer d�a
	Para indice <- 0 Hasta dia1-1 Hacer
		Escribir sin saltar "    ";
	FinPara
	//Desde el primer d�a al �ltimo
	Para indice <- 1 Hasta dias_mes Hacer
		//si estoy escrbiendo del 1 al 9 a�ado espacios al principio para que se justifique a la derecha y se vea de forma adecuada
		Si indice < 10 Entonces
			Escribir Sin Saltar " ", indice, "  ";
		SiNo
			Escribir Sin Saltar indice, "  ";
		FinSi
		//Voy incrementado el d�a de la semana correspondiente al d�a que voy a escribir a continuaci�n
		dia1 <- dia1 +1;
		//Si llego al Domingo (6) hay que realizar un salto de l�nea
		Si dia1 > 6 Entonces
			Escribir "";
			dia1 <- 0;
		FinSi
	FinPara
	Escribir "";
FinFuncion

//################################################################################
//Programa que pida un mes y un a�o (superior a 1900) y muestre el calendario del mes 
//################################################################################

Proceso ProgramaCalendario
	Definir month, year Como Entero;
	Repetir
		Escribir Sin Saltar "Mes: ";
		Leer month;
	Hasta Que month >= 1 Y month <= 12;
	Escribir Sin Saltar "A�o: ";
	Leer year;
	Calendario(month, year);
FinProceso
