//################################################################################
//Función "validarFecha": Recibe un día, mes y año correspondiente a una fecha y 
//devuelve si la fecha es correcta o no.
//Simplemente miramos si el día indicado es mayor que 1 y menor que los días del mes
//Si introducimos un mes incorrecto, la función "diasDelMes" devuelve 0 por lo tanto
//la fecha va a ser incorrecta.
//Parámetros de entrada: día, mes y año
//Dato devuelto: Valor lógico indicando si es correcta (Verdadero) o no (Falso)
//################################################################################

Funcion esvalida <- validarFecha(day, month, year)
	Definir esvalida Como Logico;
	Si day < 1 O day > diasDelMes(month, year) Entonces
		esvalida <- Falso;
	SiNo
		esvalida <- Verdadero;
	FinSi
FinFuncion

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
//Función "calcular_Dia_Juliano": Recibe un día, mes y año y devuelve el día juliano
//correspondiente a esa fecha. El día juliano correspondiente a una fecha es un 
//número entero que indica los días que han transcurrido desde el 1 de enero del 
//año indicado. Depende de la función "diasDelMes"
//Parámetros de entrada: día, mes y año
//Dato devuelto: Día juliano
//################################################################################

Funcion diaj <- calcular_Dia_Juliano(day, month, year)
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
//como parámetro de entrada / salida. Se utiliza la función validarFecha para 
//asegurar que la fecha es correcta.
//Parámetros de entrada/salida: día, mes y año
//################################################################################

Funcion leerFecha(day Por Referencia, month Por Referencia, year Por Referencia)
	Definir fechavalida Como Logico;
	Repetir
		Escribir Sin Saltar "Día: ";
		Leer day;
		Escribir Sin Saltar "Mes: ";
		Leer month;
		Escribir Sin Saltar "Año: ";
		Leer year;
		fechavalida <- ValidarFecha(day, month, year);
		Si No fechavalida Entonces
			Escribir "Fecha no válida";
		FinSi
	Hasta Que fechavalida;	
FinFuncion

//################################################################################
//Vamos a mejorar el ejercicio anterior haciendo una función para validar la fecha. 
//De tal forma que al leer una fecha se asegure que es válida.
//################################################################################

Proceso DiaJuliano
	Definir d, m, a como Entero;
	leerFecha(d, m, a);
	Escribir "Día Juliano: ", calcular_Dia_Juliano(d, m, a);
FinProceso
