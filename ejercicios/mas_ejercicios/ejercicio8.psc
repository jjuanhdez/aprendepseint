//################################################################################
//Función "esBisiesto": Recibe un año y devuelve si es o no bisiesto
//Parámetros de entrada: año
//Dato devuelto: Valor lógico indicando si es bisiesto (Verdadero) o no (Falso)
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
//Función "diasDelMes": Recibe un mes y un año y devuelve el número de días que 
//tiene ese mes en ese año. Necesita la función "esBisiesto"
//Parámetros de entrada: mes y año
//Dato devuelto: Días del mes en ese año
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
//Función "calcularDiaJuliano": Recibe un día, mes y año y devuelve el día juliano
//correspondiente a esa fecha. El día juliano correspondiente a una fecha es un 
//número entero que indica los días que han transcurrido desde el 1 de enero del 
//año indicado. Depende de la función "diasDelMes"
//Parámetros de entrada: día, mes y año
//Dato devuelto: Día juliano
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
//Función "diasDesde1900": Recibe un día, mes y año y devuelve los días  
//transcurridos desde 1900. Por cada año se acumula 365 o 366 días, 
//y del último año se acumula el día juliano
//Parámetros de entrada: día, mes y año
//Dato devuelto: Días desde 1900
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
//Función "devolverNombreMes": Recibe un mes y devuelve el nombre del mes indicado.
//Parámetros de entrada: mes
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
//Procedimiento "Calendario": Recibe un mes y un año e imprime el calendario de ese
//mes .Necesitamos calcular los días del mes, los días desde 1900 al 1 del mes y año 
//indicados, y una vez calculado le hacemos el módulo 7 y el número obtenido será 
//el día de la semana (0: domingo, 1: lunes, ...) (Tenemos que transformarlo para 
//que el 0 sea lunes.
//Escribimos espacios para desplazar el día 1 a la posición correspondiente, 
//desde el día 1 Hasta el último día del mes, vamos colocando los demás días
//teniendo en cuanta que cada 7 días colocados tenemos que hacer un salto de línea.
//Parámetros de entrada:  mes y año
//################################################################################

Funcion Calendario(month, year)
	Definir dias_mes, dia1, indice Como Entero;
	//Calculamos los días del mes y año indicados.
	dias_mes <- diasDelMes(month, year);
	//Calculamos los días transcurridos desde 1/1/1900 al 1 del mes año indicados.
	dia1 <- diasDesde1900(1, month, year);
	//Calculamos el resto de la división entre 7 (0: domingo, 1: lunes, ...)
	dia1 <- dia1 % 7;
	//Lo transformo para que el lunes sea el de la posición 0 y el domingo el 6
	dia1 <- dia1 -1;
	Si dia1 = -1 Entonces
		dia1 <- 6;
	FinSi
	//Mostramos el nombre del mes y el año
	Escribir "";
	Escribir devolverNombreMes(month), " de ", year;
	Escribir "";
	Escribir " L   M   M   J   V   S   D";
	Escribir "==========================";
	//Escribo espacios Hasta el día de la semana para desplazar la colocación del primer día
	Para indice <- 0 Hasta dia1-1 Hacer
		Escribir sin saltar "    ";
	FinPara
	//Desde el primer día al último
	Para indice <- 1 Hasta dias_mes Hacer
		//si estoy escrbiendo del 1 al 9 añado espacios al principio para que se justifique a la derecha y se vea de forma adecuada
		Si indice < 10 Entonces
			Escribir Sin Saltar " ", indice, "  ";
		SiNo
			Escribir Sin Saltar indice, "  ";
		FinSi
		//Voy incrementado el día de la semana correspondiente al día que voy a escribir a continuación
		dia1 <- dia1 +1;
		//Si llego al Domingo (6) hay que realizar un salto de línea
		Si dia1 > 6 Entonces
			Escribir "";
			dia1 <- 0;
		FinSi
	FinPara
	Escribir "";
FinFuncion

//################################################################################
//Programa que pida un mes y un año (superior a 1900) y muestre el calendario del mes 
//################################################################################

Proceso ProgramaCalendario
	Definir month, year Como Entero;
	Repetir
		Escribir Sin Saltar "Mes: ";
		Leer month;
	Hasta Que month >= 1 Y month <= 12;
	Escribir Sin Saltar "Año: ";
	Leer year;
	Calendario(month, year);
FinProceso
