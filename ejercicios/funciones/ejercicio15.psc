//################################################################################
//Procedimiento "inicializarCola": Recibe un vector (cola) y su tama�o. 
//Recorre el vector e inicializa sus elementos a *. 
//El * representa que el elemento est� vac�o.
//Par�metros de entrada: Tama�o del vector
//Par�metros de entrada y salida: El vector (cola)
//################################################################################

Funcion inicializarCola(cola Por Referencia, size_cola)
	Definir i Como Entero;
	Para i <- 0 Hasta size_cola-1 Hacer
		cola[i] <- "*";
	FinPara
FinFuncion


//################################################################################
//Funci�n "longitudCola": Recibe un vector (cola) y su tama�o. 
//Devuelve un contador con los elementos de la cola.
//Recorre el vector mientras no encuentre un * o llegue al final.
//Par�metros de entrada: Tama�o del vector, el vector (cola)
//################################################################################

Funcion size <- longitudCola(cola, size_cola)
	Definir size Como Entero;
	size <- 0;
	Mientras size<size_cola Y cola[size] <> "*" Hacer
		size <- size +1;
	FinMientras
FinFuncion


//################################################################################
//Funci�n "estaVaciaCola": Recibe un vector (cola) y su tama�o. 
//Devuelve un valor l�gico indicando si la cola est� vac�a.
//Est� vac�a si la longitud es 0.
//Par�metros de entrada: Tama�o del vector, el vector (cola)
//################################################################################

Funcion resultado <- estaVaciaCola(cola, size_cola)
	Definir resultado Como Logico;
	Si longitudCola(cola, size_cola) = 0 Entonces
		resultado <- Verdadero;
	SiNo
		resultado <- Falso;
	FinSi
FinFuncion


//################################################################################
//Funci�n "estaLlenaCola": Recibe un vector (cola) y su tama�o. 
//Devuelve un valor l�gico indicando si la cola est� llena.
//Est� llena si la longitud es igual al tama�o del vector.
//Par�metros de entrada: Tama�o del vector, el vector (cola)
//################################################################################

Funcion resultado <- estaLlenaCola(cola, size_cola)
	Definir resultado Como Logico;
	Si longitudCola(cola, size_cola) = size_cola Entonces
		resultado <- Verdadero;
	SiNo
		resultado <- Falso;
	FinSi
FinFuncion


//################################################################################
//Procedimiento "addCola": Recibe un vector (cola), su tama�o y un elemento (cadena)
//Si no esta llena, a�ade el elemento en la siguiente posici�n vac�a, 
//cuyo indice es igual a la Longitud de la cola.
//Si est� llena, escribe un mensaje de error.
//Par�metro de entrada: Tama�o del vector y el elemento.
//Par�metros de entrada y salida: El vector (cola)
//################################################################################

Funcion addCola(cad, cola Por Referencia, size_cola)
	Si no estaLlenaCola(cola, size_cola) Entonces
		cola[longitudCola(cola, size_cola)] <- cad;
	SiNo
		Escribir "No se puede a�adir elemento. La cola est� llena.";
	FinSi
FinFuncion


//################################################################################
//Funci�n "sacarDeLaCola": Recibe un vector (cola), su tama�o y devuelve 
//el elemento que se ha introducido en primer lugar, si no est� vac�a.
//El �ndice de ese elemento ser� el 0. Lo dem�s elementos se desplazan hac�a el 
//primer elemento. Y el �ltimo elemento (el de la posici�n tama�o de la cola - 1)
//se inicializa a *.
//Si est� vac�a, escribe un mensaje de error.
//Par�metro de entrada: Tama�o del vector y el elemento.
//Par�metros de entrada y salida: El vector (cola)
//Dato devuelto: El elemento 
//################################################################################

Funcion cad <- sacarDeLaCola(cola Por Referencia, size_cola)
	Definir cad Como Caracter;
	definir i Como Entero;
	Si no estaVaciaCola(cola, size_cola) Entonces
		cad <- cola[0];
		Para i <- 0 Hasta size_cola-2 Hacer
			cola[i] <- cola[i+1];
		FinPara
		cola[size_cola-1] <- "*";
	SiNo
		Escribir "No se puede sacar elemento. La cola est� vacia.";
		cad <- "";	
	FinSi
FinFuncion


//################################################################################
//Funci�n "escribirCola": Recibe un vector (cola) y su tama�o. 
//Muestra los elementos del vector Hasta que llegue al final o se encuentre un *.
//Par�metros de entrada: Tama�o del vector, el vector (cola)
//################################################################################

Funcion escribirCola(cola, size_cola)
	Definir i Como Entero;
	i <- 0;
	Mientras i<size_cola y cola[i] <> "*" Hacer
		Escribir Sin Saltar cola[i], " ";
		i <- i +1;
	FinMientras
	Escribir "";
FinFuncion


//################################################################################
//Realiza un programa principal que nos permita usar funciones para manipular colas.
//################################################################################

Proceso ProgramaCola
	Definir micola Como Caracter;
	Dimension micola[3];
	Definir tam_cola Como Entero;
	Definir elem Como Caracter;
	Definir opcion Como Entero;
	tam_cola <- 3;
	inicializarCola(micola, tam_cola);
	Repetir
		Escribir "1.- A�adir elemento a la cola";
		Escribir "2.- Sacar elemento de la cola";
		Escribir "3.- Longitud de la cola";
		Escribir "4.- Mostrar cola";
		Escribir "5.- Salir";
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir sin Saltar "Dame la cadena para a�adir a la cola: ";
				Leer elem;
				addCola(elem, micola, tam_cola);
			2:
				Escribir sacarDeLaCola(micola, tam_cola);
			3:
				Escribir "Longitud: ", longitudCola(micola, tam_cola);
			4:
				escribirCola(micola, tam_cola);
			5:
			De Otro Modo:
				Escribir "Opci�n incorrecta.";
		FinSegun
	Hasta Que opcion = 5;
FinProceso
