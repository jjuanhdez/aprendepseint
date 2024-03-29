//################################################################################
//Funci�n "devolverNumero": Recibe un intervalo (l�mite inferior y superior) y 
//devuelve el n�mero intermedio Como posible n�mero que tiene que acertar.
//Par�metro de entrada: L�mite inferior y superior del intervalo.
//Dato devuelto: N�mero intermedio del intervalo.
//################################################################################

Funcion num <- devolverNumero(liminf, limsup)
	Definir num Como Entero;
	num <- Trunc((liminf+  limsup) / 2);
FinFuncion

//################################################################################
//Funci�n "leerOpcion": Recibe un intervalo (l�mite inferior y superior) y el n�mero 
//que ha propuesto Como soluci�n y devuelve la opci�n escogida:
// 'S', si es correcto.
// 'A', si es m�s alto que el n�mero a adivinar.
// 'B', si es m�s bajo. Al finalizar el programa, se deber� escribir el n�mero de 
//intentos realizados para acertar el n�mero.
//Si la opci�n es A, se modifica el l�mite inferior con el n�mero propuesto.
//Si la opci�n es B, se modifica el l�mite superior con el n�mero propuesto.
//Par�metro de entrada: N�mero propuesto
//Par�metro de entrada y salida: L�mite inferior y superior del intervalo.
//Dato devuelto: Opci�n escogida
//################################################################################

Funcion opcion <- leerOpcion(num, liminf Por Referencia, limsup Por Referencia)
	Definir opcion Como Caracter;
	Repetir
		Escribir "�Es correcto?";
		Escribir "S: si es correcto.";
		Escribir "A: si es m�s alto que el n�mero a adivinar.";
		Escribir "B: si es m�s bajo.";
		Leer opcion;
	Hasta Que Mayusculas(opcion) = "S" O Mayusculas(opcion) = "A" O Mayusculas(opcion) = "B";
	Si Mayusculas(opcion) = "A" Entonces
		liminf <- num;
	FinSi
	Si Mayusculas(opcion) = "B" Entonces
		limsup <- num;
	FinSi
FinFuncion

//################################################################################
//Programa que permita adivinar a la computadora un determinado n�mero entero y 
//positivo para lo cual se deben leer los l�mites en los que est� comprendido dicho 
//n�mero.
//################################################################################

Proceso AdivinarNumero
	Definir limite_inferior, limite_superior, minumero Como Entero;
	Definir oppcion Como Caracter;
	Definir intentos Como Entero;
	intentos <- 0;
	Escribir "Piensa un n�mero...";
	//Se pide el primer intervalo
	Escribir "Necesito saber el intervalo donde se encuentra el n�mero.";
	Escribir Sin Saltar "L�mite inferior: "; 
	Leer limite_inferior;
	Escribir Sin Saltar "L�mite superior: "; 
	Leer limite_superior;
	//Se va repitiendo hasta que se acierte el n�mero
	Repetir
		//Escribimos el n�mero propuesto (qu� sera el n�mero intermedio del intervalo)
		minumero <- devolverNumero(limite_inferior, limite_superior);
		Escribir "�Has pensando en el n�mero? ", minumero;
		//Incrementamos el n�mero de intentos
		intentos <- intentos +1;
		//Leemos la opci�n, si no ha acertado se modifica alguno de los l�mites 
		//y se vuelve a proponer un nuevo n�mero
		oppcion <- LeerOpcion(minumero, limite_inferior, limite_superior);
	Hasta Que Mayusculas(oppcion) = "S";
	//Se escribe los intentos que ha necesitado para acertarlo
	Escribir "Lo he acertado en ", intentos, " intentos.";
FinProceso
