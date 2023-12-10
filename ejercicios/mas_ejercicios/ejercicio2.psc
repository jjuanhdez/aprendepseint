//################################################################################
//Función "CalcularLetra": Recibe un número de DNI, devuelve la letra correspondiente.
//Para calcular la letra se divide el número entre 23 y el resto indica la posición
//de una lista de letras que hemos guardado en una cadena.
//Parámetros de entrada: Número del DNI
//Dato devuelto: La letra calculada
//################################################################################

Funcion letra <- CalcularLetra(num)
	Definir letra Como Caracter;
	Definir letras Como Caracter;
	letras <- "TRWAGMYFPDXBNJZSQVHLCKE";
	letra <- subcadena(letras, num%23, num%23);
FinFuncion

//################################################################################
//Función "ValidarDNI": Recibe un DNI cadena de caracteres (números y letra), 
//devuelve si el DNI es valido o no. Para saber si el válido se utiliza la función 
//CalcularLetra con el número del DNI y se comprueba si la letra calculada coincide
//con la letra del DNI.
//Parámetros de entrada: DNI
//Dato devuelto: Valor lógico Verdadero si el DNI es válido o Falso en caso contrario.
//################################################################################

Funcion esvalido <- ValidarDNI(dni)
	Definir esvalido Como Logico;
	Definir num Como Entero;
	Definir letra Como Caracter;
	letra <- subcadena(dni,8,8);
	num <- ConvertirANumero(subcadena(dni,0,7));
	esvalido <- Mayusculas(letra) = CalcularLetra(num);
FinFuncion

//################################################################################
//Realiza un programa principal que lea un DNI y valide si es correcto (debe 
//comprobar también que tiene 9 caracteres).
//################################################################################

Proceso ProgramaDNI
	Definir midni Como Caracter;
	Escribir Sin Saltar "DNI: ";
	Leer midni;
	//Mienstras el DNI sea inválido o su longitud no sea de 9 caracteres, vuelvo a pedirlo.
	Mientras No ValidarDNI(midni) o Longitud(midni) <> 9 Hacer
		Escribir "Error en el DNI";
		Escribir Sin Saltar "DNI: ";
		Leer midni;
	FinMientras
	Escribir "DNI correcto";
FinProceso
