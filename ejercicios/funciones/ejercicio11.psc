//################################################################################
//Funci�n "esBisiesto": Recibe un a�o y devuelve si es o no bisiesto
//Par�metros de entrada: a�o
//Dato devuelto: Valor l�gico indicando si es bisiesto (Verdadero) o no (Falso)
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
//Funci�n "diasDelMes": Recibe un mes y un a�o y devuelve el n�mero de d�as que 
//tiene ese mes en ese a�o. Necesita la funci�n esBisiesto
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
		2: //El mes de febrero depende de si el a�o es bisiesto
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
//Procedimiento "leerFecha": Lee por teclado el d�a, mes y el a�o y lo devuelve
//como par�metro de entrada / salida.
//Par�metros de entrada/salida: d�a, mes y a�o
//################################################################################

Funcion leerFecha(day Por Referencia, month Por Referencia, year Por Referencia)
	Escribir Sin Saltar "D�a: ";
	Leer day;
	Escribir Sin Saltar "Mes: ";
	Leer month;
	Escribir Sin Saltar "A�o: ";
	Leer year;
FinFuncion

//################################################################################
//Crear un programa principal que al introducir una fecha nos diga el d�a juliano 
//que corresponde. 
//################################################################################

Proceso DiaJuliano
	Definir d, m, a Como Entero;
	leerFecha(d, m, a);
	Escribir "D�a Juliano: ", Calcular_Dia_Juliano(d, m, a);
FinProceso
