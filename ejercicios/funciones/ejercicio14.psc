//################################################################################
//Procedimiento "inicializarPila": Recibe un vector (pila) y su tama�o. 
//Recorre el vector e inicializa sus elementos a *. 
//El * representa que el elemento est� vac�o.
//Par�metros de entrada: Tama�o del vector
//Par�metros de entrada y salida: El vector (pila)
//################################################################################

Funcion inicializarPila(pila Por Referencia, size_pila)
	Definir i Como Entero;
	Para i <- 0 Hasta size_pila-1 Hacer
		pila[i] <- "*";
	FinPara
FinFuncion

//################################################################################
//Funci�n "longitudPila": Recibe un vector (pila) y su tama�o. 
//Devuelve un contador con los elementos de la pila.
//Recorre el vector mientras no encuentre un * o llegue al final.
//Par�metros de entrada: Tama�o del vector, el vector (pila)
//################################################################################

Funcion size <- longitudPila(pila, size_pila)
	Definir size Como Entero;
	size <- 0;
	Mientras size < size_pila Y pila[size] <> "*"  Hacer
		size <- size +1;
	FinMientras
FinFuncion

//################################################################################
//Funci�n "estaVaciaPila": Recibe un vector (pila) y su tama�o. 
//Devuelve un valor l�gico indicando si la pila est� vac�a.
//Est� vac�a si la longitud es 0.
//Par�metros de entrada: Tama�o del vector, el vector (pila)
//################################################################################

Funcion resultado <- estaVaciaPila(pila, size_pila)
	Definir resultado Como Logico;
	Si longitudPila(pila, size_pila) = 0 Entonces
		resultado <- Verdadero;
	SiNo
		resultado <- Falso;
	FinSi
FinFuncion

//################################################################################
//Funci�n "estaLlenaPila": Recibe un vector (pila) y su tama�o. 
//Devuelve un valor l�gico indicando si la pila est� llena.
//Est� llena si la longitud es igual al tama�o del vector.
//Par�metros de entrada: Tama�o del vector, el vector (pila)
//################################################################################

Funcion resultado <- estaLlenaPila(pila, size_pila)
	Definir resultado Como Logico;
	Si longitudPila(pila, size_pila) = size_pila Entonces
		resultado <- Verdadero;
	SiNo
		resultado <- Falso;
	FinSi
FinFuncion

//################################################################################
//Procedimiento "addPila": Recibe un vector (pila), su tama�o y un elemento (cadena)
//Si no est� llena, a�ade el elemento en la siguiente posici�n vac�a,
//cuyo indice es igual a la Longitud de la pila.
//Si est� llena, escribe un mensaje de error.
//Par�metro de entrada: Tama�o del vector y el elemento.
//Par�metros de entrada y salida: El vector (pila)
//################################################################################

Funcion addPila(cad, pila Por Referencia, size_pila)
	Si no estaLlenaPila(pila, size_pila) Entonces
		pila[longitudPila(pila, size_pila)] <- cad;
	SiNo
		Escribir "No se puede a�adir elemento. La pila est� llena.";
	FinSi
FinFuncion

//################################################################################
//Funci�n "sacarDeLaPila": Recibe un vector (pila), su tama�o y devuelve 
//el elemento que se ha introducido en �ltimo lugar, si no est� vac�a.
//El �ndice de ese elemento ser� la longitud de la pila - 1
//El elemento en esa posici�n se vac�a, es decir se inicializa a *.
//Si est� vac�a, escribe un mensaje de error.
//Par�metro de entrada: Tama�o del vector y el elemento.
//Par�metros de entrada y salida: El vector (pila)
//Dato devuelto: El elemento 
//################################################################################

Funcion cad <- sacarDeLaPila(pila Por Referencia, size_pila)
	Definir cad Como Caracter;
	Si no estaVaciaPila(pila, size_pila) Entonces
		cad <- pila[longitudPila(pila, size_pila)-1];
		pila[longitudPila(pila, size_pila)-1] <- "*";
	SiNo
		Escribir "No se puede sacar elemento. La pila est� vacia.";
		cad <- "";
	FinSi
FinFuncion

//################################################################################
//Funci�n "escribirPila": Recibe un vector (pila) y su tama�o. 
//Muestra los elementos del vector hasta que llegue al final o se encuentre un *.
//Par�metros de entrada: Tama�o del vector, el vector (pila)
//################################################################################

Funcion escribirPila(pila, size_pila)
	Definir i Como Entero;
	i <- 0;
	Mientras i < size_pila Y pila[i] <> "*" Hacer
		Escribir Sin Saltar pila[i], " ";
		i <- i +1;
	FinMientras
	Escribir "";
FinFuncion

//################################################################################
//Realiza un programa principal que nos permita usar funciones para manipular pilas.
//################################################################################

Proceso ProgramaPila
	Definir mipila Como Caracter;
	Dimension mipila[10];
	Definir tam_pila Como Entero;
	Definir elem Como Caracter;
	Definir opcion Como Entero;
	tam_pila <- 10;
	inicializarPila(mipila, tam_pila);
	Repetir
		Escribir "1.- A�adir elemento a la pila";
		Escribir "2.- Sacar elemento de la pila";
		Escribir "3.- Longitud de la pila";
		Escribir "4.- Mostrar pila";
		Escribir "5.- Salir";
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir sin Saltar "Dame la cadena para a�adir a la pila: ";
				Leer elem;
				addPila(elem, mipila, tam_pila);
			2:
				Escribir sacarDeLaPila(mipila, tam_pila);
			3:
				Escribir "Longitud: ",longitudPila(mipila, tam_pila);
			4:
				escribirPila(mipila, tam_pila);
			5:
			De Otro Modo:
				Escribir "Opci�n incorrecta.";
		FinSegun
	Hasta Que opcion = 5;
FinProceso
