//################################################################################
//Dise�ar el algoritmo correspondiente a un programa, que:
// * Cree una tabla bidimensional de longitud 5x5 y nombre 'matriz'.
// * Cargue la tabla con valores num�ricos enteros.
// * Sume todos los elementos de cada fila y todos los elementos de cada columna 
//   visualizando los resultados en pantalla.
//################################################################################
//An�lisis
//Recorro la tabla (con dos para) y voy leyendo los elementos de cada fila y columna.
//Recorro la tabla por filas y columnas y voy acumulando el valor de lo elementos
//de cada columna.
//Recorro la tabla por columnas y filas y voy acumulando el valor de lo elementos
//de cada fila.
//Datos de entrada: Los elementos de la tabla.
//Informaci�n de salida: La suma por cada columna, y la suma por cada fila
//Variables: matriz (tabla de 5 x 5 enteros),
//           fila, col, num_filas, num_cols, suma (Entero)
//################################################################################

Proceso Tabla
    Definir matriz Como Entero;
    Dimension matriz[5,5];
    Definir fila, col como Entero;
    Definir num_filas, num_cols Como Entero;
    Definir suma Como Entero;
    num_filas <- 5;
    num_cols <- 5;
    Para fila <- 0 Hasta num_filas-1 Hacer
        Para col <- 0 Hasta num_cols-1 Hacer
            Escribir Sin Saltar "Introduce el n�mero de la fila ", fila+1, " y columna ", col+1, ":";
            Leer matriz[fila,col];
        FinPara
    FinPara
    //Suma las filas
    Para fila <- 0 Hasta num_filas-1 Hacer
        suma <- 0;
        Para col <- 0 Hasta num_cols-1 Hacer
            suma <- suma + matriz[fila,col];
        FinPara
        Escribir "La suma de los elemento de la fila ", fila+1, " es ", suma;
    FinPara
    //Suma las columnas
    Para col <- 0 Hasta num_cols-1 Hacer
        suma <- 0;
        Para fila <- 0 Hasta num_filas-1 Hacer
            suma <- suma + matriz[fila,col];
        FinPara
        Escribir "La suma de los elemento de la columna ", col+1, " es ", suma;
    FinPara
FinProceso    
