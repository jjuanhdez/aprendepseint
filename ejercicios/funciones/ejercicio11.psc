//################################################################################
//Función "esBisiesto": Recibe un año y devuelve si es o no bisiesto
//Parámetros de entrada: año
//Dato devuelto: Valor lógico indicando si es bisiesto (Verdadero) o no (Falso)
//################################################################################

Funcion bisiesto <- esBisiesto(year)
	Definir bisiesto Como Logico;
	Si (year % 4 = 0 Y NO (year % 100 = 0)) O year % 400 = 0 Entonces
		bisiesto <- Verdadero;
	SiNo
		bisiesto <- Falso;
	FinSi
FinFuncion


//################################################################################
//Función "diasDelMes": Recibe un mes y un año y devuelve el número de días que 
//tiene ese mes en ese año. Necesita la función esBisiesto
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
		2: //El mes de febrero depende de si el año es bisiesto
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

Funcion diaj <- calcularDiaJuliano(day, month, year)
	Definir mes Como Entero;
	Definir diaj Como Entero;
	diaj <- 0;
	Para mes<-1 Hasta month-1 Hacer
		diaj <- diaj + diasDelMes(mes, year);
	FinPara
	diaj <- diaj + day;
FinFuncion


//################################################################################
//Procedimiento "leerFecha": Lee por teclado el día, mes y el año y lo devuelve
//como parámetro de entrada / salida.
//Parámetros de entrada/salida: día, mes y año
//################################################################################

Funcion leerFecha(day Por Referencia, month Por Referencia, year Por Referencia)
	Escribir Sin Saltar "Día: ";
	Leer day;
	Escribir Sin Saltar "Mes: ";
	Leer month;
	Escribir Sin Saltar "Año: ";
	Leer year;
FinFuncion

//################################################################################
//Crear un programa principal que al introducir una fecha nos diga el día juliano 
//que corresponde. 
//################################################################################

Proceso DiaJuliano
	Definir d, m, a Como Entero;
	leerFecha(d, m, a);
	Escribir "Día Juliano: ", Calcular_Dia_Juliano(d, m, a);
FinProceso
