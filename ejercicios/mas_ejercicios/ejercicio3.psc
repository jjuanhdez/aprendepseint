//################################################################################
//Funci�n "CalcularVuelta": Recibe el dinero que hay que devolver y el valor de un 
//billete o una moneda, devuelve el n�mero de billetes o monedas de esa cantidad
//que hay que devolver y actualiza el dinero que queda por devolver.
//Par�metros de entrada: cantidad: valor del billete o la moneda
//Par�metros de entrada y salida : dinero que hay que devolver, se devuelve con el 
//dinero que queda por devolver.
//Dato devuelto: vuelta: N�mero de billetes o monedas que hay que devolver.
//################################################################################

Funcion vuelta <- CalcularVuelta(dinero Por Referencia, cantidad)
	Definir vuelta Como Entero;
	//Realizamos la divisi�n entera entre el dinero 
	//que hay que devolver y la cantidad del billete o moneda
	vuelta <- Trunc(dinero/cantidad);
	//Actualizamos el dinero que queda por devolver
	dinero <- dinero - vuelta * cantidad;
FinFuncion

//################################################################################
//Procedimiento "InicializaBilletesMonedas": Recibe un vector "cantidades" donde 
//vamos a guardar el valor de los billetes y monedas de mayor a menor.
//Par�metros de entrada y salida : cantidades
//################################################################################

Funcion InicializaBilletesMonedas(cantidades Por Referencia)
	cantidades[1] <- 500;
	cantidades[2] <- 200;
	cantidades[3] <- 100;
	cantidades[4] <- 50;
	cantidades[5] <- 20;
	cantidades[6] <- 10;
	cantidades[7] <- 5;
	cantidades[8] <- 2;
	cantidades[9] <- 1;
	cantidades[10] <- 0.50;
	cantidades[11] <- 0.20;
	cantidades[12] <- 0.10;
	cantidades[13] <- 0.05;
	cantidades[14] <- 0.02;
	cantidades[15] <- 0.01;
FinFuncion

//################################################################################
//Procedimiento "EscribirVuelta": Recibe la cantidad de billetes o monedas y su valor
//y los imprime por pantalla. Se imprime si hay que devolver de ese billete o moneda
//es decir, si la vuelta>0. Si la cantidad>2 se devuelven billetes (euros), 
//sino se devuelven monedas y si la cantidad es >=1 se devuelven euros, sino c�ntimos.
//Par�metros de entrada: vuelta: cantidad de billetes o monedas a devolver y
//cantidad: valor del billete o moneda
//################################################################################

Funcion EscribirVuelta(vuelta, cantidad)
	//Se imprime si hay algo que devolver
	Si vuelta > 0 Entonces
		//Si la cantidad es menor de 2 devolvemos billetes
		Si cantidad > 2 Entonces
			Escribir vuelta, " billete(s) de ", cantidad," euros.";
		SiNo
			//SiNo devolvemos monedas
			//Si la cantidad >= 1 devolvemos euros
			Si cantidad >= 1 Entonces
				Escribir vuelta, " moneda(s) de ", cantidad," euros.";
			SiNo //Devolvemos c�ntimos (lo multiplicamos por 100)
				Escribir vuelta, " moneda(s) de ", cantidad*100, " c�ntimos.";
			FinSi
		FinSi
	FinSi
FinFuncion

//################################################################################
//Programa que recoja por teclado la cantidad total a pagar y la cantidad que se 
//ha entregado. La aplicaci�n debe calcular el cambio correspondiente con el menor
//n�mero de monedas y/o billetes posibles.
//################################################################################

Proceso Devolucion
	Definir dinero, total,entregada Como Real;
	Definir cantidades Como Real;
	Definir vuelta, indice Como Entero;
	Dimension cantidades[15];
	//Calculamos el dinero a devolver
	Escribir sin saltar "Dinero a pagar: ";
	Leer total;
	Escribir sin saltar "Dinero pagado: ";
	Leer entregada;
	dinero <- entregada - total;
	//Incializamos las cantidades de billetes o monedas
	InicializaBilletesMonedas(cantidades);
	//Por cada cantidad, calculamos la vuelta e imprimimos lo que hay que devolver
	Para indice <- 1 Hasta 15 Hacer
		vuelta <- CalcularVuelta(dinero, cantidades[indice]);
		EscribirVuelta(vuelta, cantidades[indice]);
		//EscribirVuelta(1230, cantidades[indice]);
	FinPara
FinProceso
