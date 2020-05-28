//
//  Matriz.swift
//  Matrix
//
//  Created by Mario Leguízamo Vega on 9/27/19.
//  Copyright © 2019 Mario Leguízamo Vega. All rights reserved.
//

import Foundation

class Matriz{
    
    let matrizIdentidad = [
        [ 1.0, 0.0, 0.0],
        [ 0.0, 1.0, 0.0],
        [ 0.0, 0.0, 1.0]
    ]
    
    let matriz3x3 = [
        [ 1.0, 2.0, 3.0],
        [ 4.0, 5.0, 6.0],
        [ 7.0, 8.0, 9.0]
    ]
    
    let matriz4x4 = [
        [ 1.0, 2.0, 3.0, 4.0],
        [ 5.0, 6.0, 7.0, 8.0],
        [ 9.0,10.0,11.0,12.0],
        [13.0,14.0,15.0,16.0]
    ]
    
    let matriz2x3 = [
        [ 1.0, 2.0, 3.0],
        [ 4.0, 5.0, 6.0]
    ]
    
    let matriz3x2 = [
        [ 1.0, 2.0],
        [ 3.0, 4.0],
        [ 5.0, 6.0]
    ]
    
    let matriz2x2 = [
        [ 1.0, 2.0],
        [ 4.0, 5.0]
    ]
    
    let matrizEjemplo = [
        [ 1.0,-1.0, 2.0],
        [-2.0, 0.0, 4.0],
        [ 0.0,-2.0, 7.0]
    ]
    
    let matrizEjemplo2 = [
        [ 2.0, 1.0,-1.0],
        [-3.0,-1.0, 2.0],
        [-2.0, 1.0, 2.0]
    ]
    
    let matrizEjemplo3 = [
        [ 3.0, 2.0, 1.0, 1.0],
        [ 5.0, 3.0, 4.0, 2.0],
        [ 1.0, 1.0,-1.0, 1.0]
    ]

    
/********************************************iniciarMatriz******************************************
     
Recibe el número de filas y el número de columnas, y regresaa una matriz de tamaño filas por columnas con todos los elementos igual a 0.

    - Ejemplo:

       función iniciarMatriz(2, 3) -> regresa [[0, 0, 0],[0, 0, 0]]

            Entrada:   filas    = 2       Salida:   A = | 0, 0, 0|
                       columnas = 3                     | 0, 0, 0|
     
    - Nota: Esta función es usada para inicializar una matriz de tamaño N x M.
     
    - Código: */
    func iniciarMatriz(filas:Int, columnas:Int) -> ([[Double]]) {
        print("Crea una matriz ", filas, "x", columnas)
        let elemento:Double = 0
        let matriz = Array(repeating: Array(repeating: elemento, count: columnas), count: filas)
        
        return matriz
    }

    
    
/****************************************agregarFilaOColumna**************************************

Recibe una matriz y un booleano, si el booleano es igual a verdadero regresaa la matriz recibida con una fila agregada al final y si el booleano es igual a falso regresaa la matriz recibida con una columna agregada al final, el valor de todos los elementos agregados es igual a 0.

    - Ejemplo:

       función agregarFilaOColumna([[1, 2],[3,  4]], true) -> regresa [[1, 2],[3, 4],[0, 0]]

                Entrada:   filaOColumna = VERDADERO      Salida:   A = | 1, 2|
                           A = | 1, 2|                                 | 3, 4|
                               | 3, 4|                                 | 0, 0|
     
     función agregarFilaOColumna([[1, 2],[3,  4]], false) -> regresa [[1, 2, 0],[3, 4. 0]]
     
                Entrada:   filaOColumna = FALSO          Salida:
                           A = | 1, 2|                             A = | 1, 2, 0|
                               | 3, 4|                                 | 3, 4, 0|
         
    - Código: */
    func agregarFilaOColumna(matrizA:[[Double]], filaOColumna:Bool) -> ([[Double]]) {
        print("Agregar fila o columna")
        let indice = 0
        var matrizNueva:[[Double]]?
        
        // Si filaOColumna es verdadero agrega una fila.
        if filaOColumna == true {
            matrizNueva = iniciarMatriz(filas: matrizA.count+1, columnas: matrizA[indice].count)
        }
        // Si filaOColumna es falso agrega una columna.
        else {
            matrizNueva = iniciarMatriz(filas: matrizA.count, columnas: matrizA[indice].count+1)
        }
        // Transfiere los coeficientes a la nueva matriz.
        for i in 0..<matrizA.count {
            for j in 0..<matrizA[indice].count {
                matrizNueva![i][j] = matrizA[i][j]
            }
        }
        
        return matrizNueva!
    }
    
    
    
/****************************************eliminarFilaOColumna**************************************
         
Recibe una matriz y un booleano, si el booleano es igual a verdadero regresa la matriz recibida con la última fila eliminada y si el booleano es igual a falso regresaa la matriz recibida con la última columna eliminada,  el valor de todos los elementos eliminaddos es borrado.

     - Ejemplo:

        función agregarFilaOColumna([[1, 2],[3,  4],[5, 6]], true) -> regresa [[1, 2],[3, 4]]

                Entrada:   filaOColumna = VERDADERO      Salida:
                           A = | 1, 2|                            A = | 1, 2|
                               | 3, 4|                                | 3, 4|
                               | 5, 6|
     
        función agregarFilaOColumna([[1, 2, 3],[4,  5, 6]], false) -> regresa [[1, 2],[4, 5]]
     
                Entrada:   filaOColumna = FALSO          Salida:
                           A = | 1, 2, 3|                         A = | 1, 2|
                               | 4, 5, 6|                             | 4, 5|
         
    - Código: */
    func eliminarFilaOColumna(matrizA:[[Double]], filaOColumna:Bool) -> ([[Double]]) {
        print("Eliminar fila o columna")
        let indice = 0
        var matrizNueva:[[Double]]?
        
        if filaOColumna == true {
            matrizNueva = iniciarMatriz(filas: matrizA.count-1, columnas: matrizA[indice].count)
        }
        else {
            matrizNueva = iniciarMatriz(filas: matrizA.count, columnas: matrizA[indice].count-1)
        }
        
        for i in 0..<matrizNueva!.count {
            for j in 0..<matrizNueva![indice].count {
                matrizNueva![i][j] = matrizA[i][j]
            }
        }
        
        return matrizNueva!
    }
    
    
    
/************************************comprobarMatrizEsCuadrada************************************
     
Recibe una matriz y regrea verdadero solo si el número de filas es igual número de columnas, de lo contario regresa falso.

     - Ejemplo:
     
        función comprobarMatrizEsCuadrada([0,0],[0,0]) -> regresa VERDADERO

            Entrada:  A = | 0, 0|       Salida: VERDADERO
                          | 0, 0|
     
     
        función comprobarMatrizEsCuadrada([0,0],[0,0],[0,0]) -> regresa FALSO
     
            Entrada:  B = | 0, 0|       Salida: FALSO
                          | 0, 0|
                          | 0, 0|
     
    - Nota: Esta función es usada para calcular el determinante de una Matriz.
     
    - Código: */
    func comprobarMatrizEsCuadrada(matrizA:[[Double]]) -> (Bool) {
        print("¿La Matriz es cuadrada?")
        var esCuadrada = false
        let indice = 0
        
        if matrizA.count == matrizA[indice].count {
            esCuadrada = true
        }
        
        return esCuadrada
    }
    
    
    
/********************************comprobarMatricesSonConformables********************************
     
Recibe dos matrices y regresa verdadero solo si el número de filas de la matriz A es igual al número de columnas de la matriz B y el número de columnas de la matriz A es igual aj número de filas de la matriz B, de lo contario regresa falso.
     
    - Ejemplo:
     
       función comprobarMatricesSonConformables([0,0],[0,0],[0,0], [0,0,0],[0,0,0]) -> regresa true

            Entrada:   A = | 0, 0| B = | 0, 0, 0|   Salida: VERDADERO
                           | 0, 0|     | 0, 0, 0|
                           | 0, 0|
     
    - Nota: Esta función es usada para obtener el producto de dos matrices.
     
    - Código: */
    func comprobarMatricesSonConformables(matrizA:[[Double]], matrizB:[[Double]]) -> (Bool) {
        print("¿Las Matrices son conformables?")
        var sonConformables = false
        let indice = 0
        
        if (matrizA.count == matrizB[indice].count) && (matrizA[indice].count == matrizB.count) {
            sonConformables = true
        }
        
        return sonConformables
    }
    
    
    
/****************************************regresarTamanosMatriz*************************************
     
Recibe una matriz y regresa de mayor a menor el numero de filas y columnas de la matriz.
     
     - Ejemplo:
     
        función regresarTamanosMatriz([0,0],[0,0],[0,0]) -> regresa 3,2
     

            Entrada:   A = | 0, 0|     Salida: 3,2
                           | 0, 0|
                           | 0, 0|
     
        función regresarTamanosMatriz([0,0,0],[0,0,0]) -> regresa 3,2
     
            Entrada:   B = | 0, 0, 0|  Salida: 3,2
                           | 0, 0, 0|
     
    - Código: */
    func regresarTamanosMatriz(matrizA:[[Double]]) -> (Int, Int) {
        print("¿Cual indice es mayor?")
        let indice = 0
        var indiceMayor = 0
        var indiceMenor = 0
        
        if matrizA.count >= matrizA[indice].count {
            indiceMayor = matrizA.count
            indiceMenor = matrizA[indice].count
        }
        else {
            indiceMayor = matrizA[indice].count
            indiceMenor = matrizA.count
        }
        
        return (indiceMayor, indiceMenor)
    }
    
    
    
/********************************comprobarTamanosMatricesSonIguales*******************************
     
Recibe dos matrices y regresa verdadero solo si el número de filas de la matriz A es igual al número de columnas de la matriz B y el número de columnas de la matriz A es igual aj número de filas de la matriz B, de lo contario regresa falso.
     
    - Ejemplo:
     
       función comprobarTamanosMatricesSonIguales([0,0],[0,0], [0,0],[0,0]) -> regresa VERDADERO
     
     
            Entrada:    A = | 0, 0|     B = | 0, 0|    Salida: VERDADERO
                            | 0, 0|         | 0, 0|
     
     
    - Nota: Esta función es usada para saber si dos matrices se pueden sumar o restar.
     
    - Código: */
    func comprobarTamanosMatricesSonIguales(matrizA:[[Double]], matrizB:[[Double]]) -> (Bool) {
        print("¿Las Matrices tienen el mismo tamano?")
        var tamanoIgual = false
        let indice = 0
        
        if (matrizA.count == matrizB.count) && (matrizA[indice].count == matrizB[indice].count) {
            tamanoIgual = true
        }
        
        return tamanoIgual
    }
    
    
    
/****************************************convertirMatrizACadena************************************
     
Recibe una matriz e imprime la cadena de los elementos de la matriz en forma de matriz.
     
     - Ejemplo:
       
        función iconvertirMatrizACadena([1,2,3],[4,5,6],[7,8,9])
     
                        1.0  2.0  3.0
                        4.0  5.0  6.0
                        7.0  8.0  9.0
     
    - Código: */
    func convertirMatrizACadena(matrizA:[[Double]]) -> (String) {
        var matrizCadena: String = ""
        var cadenaAux:String = ""
        let indice = 0
        let filas = matrizA.count
        let columnas = matrizA[indice].count
        
        for i in 0..<filas {
            for j in 0..<columnas {
                if matrizA[i][j] >= 0 {
                    matrizCadena += " "
                }
                cadenaAux = String((matrizA[i][j]*1000).rounded()/1000)
                while cadenaAux.count < 10 {
                    cadenaAux += " "
                }
                matrizCadena += cadenaAux
                if j < columnas-1 {
                    matrizCadena += " "
                }
            }
            if i < filas-1 {
                matrizCadena += "\n"
            }
        }
        
        return matrizCadena
    }
    
    
    
/********************************************imprimirMatriz*****************************************

Recibe una matriz e imprime elemento por elemento.
              
     - Ejemplo:
                
        función imprimirMatriz([1,2],[3,4],[5,6])
              
                                 A:[0][0] = 1
                                 A:[0][1] = 2
                                 A:[1][0] = 3
                                 A:[1][1] = 4
                                 A:[2][0] = 5
                                 A:[2][1] = 6
              
    - Código: */
    func imprimirMatriz(matrizA:[[Double]]) -> () {
        print("Matriz:")
        let indice = 0
            
        for i in 0..<matrizA.count {
            for j in 0..<matrizA[indice].count {
                print("A: [", i, "] [", j, "] = ", matrizA[i][j])
            }
        }
    }
    
    
    
/********************************************sumarMatrices****************************************
     
Recibe dos matrices y regresa una matriz C, que es igual a la matriz A mas la matriz B.
     
    - Ejemplo:
     
       función sumarMatrices([1,2],[3,4], [3,3],[3,3]) -> regresa [4,5],[6,7]
     
     
                   A + B = | 1, 2| + | 3, 3|  =  | 4, 5|
                           | 3, 4|   | 3, 3|     | 6, 7|
     
     
    - Nota: Esta función usa el método "comprobarTamanosMatricesSonIguales".
     
    - Código: */
    func sumarMatrices(matrizA:[[Double]], matrizB:[[Double]]) -> ([[Double]]){
        print("Suma A + B")
        let indice = 0
        var matrizC = iniciarMatriz(filas: matrizA.count, columnas: matrizA[indice].count)
        
        if comprobarTamanosMatricesSonIguales(matrizA: matrizA, matrizB: matrizB) == true {
            for i in 0..<matrizA.count {
                for j in 0..<matrizA[indice].count {
                    matrizC[i][j] = matrizA[i][j] + matrizB[i][j]
                }
            }
        }
        
        return matrizC
    }
    
    
    
/********************************************restarMatrices*****************************************
     
Recibe dos matrices y regresa una matriz C, que es igual a la matriz A menos la matriz B.
     
     - Ejemplo:
     
        función restarMatrices([1,2],[3,4], [3,3],[3,3]) -> regresa [-2,-1],[0,1]
     

                    A - B = | 1, 2| - | 3, 3|  =  |-2,-1|
                            | 3, 4|   | 3, 3|     | 0, 1|
     
     
    - Nota: Esta función usa el método "comprobarTamanosMatricesSonIguales".
     
    - Código: */
    func restarMatrices(matrizA:[[Double]], matrizB:[[Double]]) -> ([[Double]]) {
        print("Resta A - B")
        let indice = 0
        var matrizC = iniciarMatriz(filas: matrizA.count, columnas: matrizA[indice].count)
        
        if comprobarTamanosMatricesSonIguales(matrizA: matrizA, matrizB: matrizB) == true {
            for i in 0..<matrizA.count {
                for j in 0..<matrizA[indice].count {
                    matrizC[i][j] = matrizA[i][j] - matrizB[i][j]
                }
            }
        }
        
        return matrizC
    }
    
    
    
/****************************************multiplicarMatrices*****************************************
     
Recibe dos matrices y regresa una matriz C en la que cada uno de sus elementos es igual a la suma de multiplicar los elementos de la fila de la matriz A por los elementos de la columna de la matriz B.
     
     - Ejemplo:
     
        función multiplicarMatrices([1,2],[3,4],[5,6], [1,2,3],[4,5,6]) -> regresa [9,12,15],[19,26,33],[29,40,51]
     
            [A]3x2 * [B]2x3 = [C]3x3
                                               1·1 + 2·4 = 9
                                               1·2 + 2·5 = 12
                                               1·3 + 2·6 = 15
                      | 1, 2|   | 1, 2, 3|     3·1 + 4·4 = 19     | 9,12,15|
            A * B  =  | 3, 4| * | 4, 5, 6|  =  3·2 + 4·5 = 26  =  |19,26,33|
                      | 5, 6|                  3·3 + 4·6 = 33     |29,40,51|
                                               3·1 + 4·4 = 29
                                               3·2 + 4·5 = 40
                                               3·3 + 4·6 = 51
     
     
        función multiplicarMatrices([1,2,3],[4,5,6], [1,2],[3,4],[5,6]) -> regresa [28,22],[49,64]
     
            [B]2x3 * [A]3x2 = [C]2x2
                                              1·1 + 2·3 + 3·5 = 22
                      | 1, 2, 3|   | 1, 2|    1·2 + 2·4 + 3·6 = 28     |28,22|
            B * A  =  | 4, 5, 6| * | 3, 4|  = 4·1 + 5·3 + 6·5 = 49  =  |49,64|
                                   | 5, 6|    4·2 + 5·4 + 6·6 = 64
     
    - Nota: Esta función usa el método "comprobarMatricesSonConformables".
     
    - Código: */
    func multiplicarMatrices(matrizA:[[Double]], matrizB:[[Double]]) -> ([[Double]]) {
        print("Multiplica A * B")
        let indice = 0
        var matrizC = iniciarMatriz(filas: matrizA.count, columnas: matrizA.count)
        
        if comprobarMatricesSonConformables(matrizA: matrizA, matrizB: matrizB) == true {
            for i in 0..<matrizA[indice].count {
                for j in 0..<matrizA.count {
                    for k in 0..<matrizB[indice].count {
                        matrizC[j][k] += matrizA[j][i] * matrizB[i][k]
                    }
                }
            }
        }
        
        return matrizC
    }
    

    
/****************************************dividirMatrices********************************************
        CORREGIR DOCUMENTACION
Recibe dos matrices y regresa una matriz C en la que cada uno de sus elementos es igual a la suma de multiplicar los elementos de la fila de la matriz A por los elementos de la columna de la matriz B.
         
    - Ejemplo:
         
       función dividirMatrices([1,2],[3,4],[5,6], [1,2,3],[4,5,6]) -> regresa [9,12,15],[19,26,33],[29,40,51]
         
                [A]3x2 * [B]2x3 = [C]3x3
                                                   1·1 + 2·4 = 9
                                                   1·2 + 2·5 = 12
                                                   1·3 + 2·6 = 15
                          | 1, 2|   | 1, 2, 3|     3·1 + 4·4 = 19     | 9,12,15|
                A * B  =  | 3, 4| * | 4, 5, 6|  =  3·2 + 4·5 = 26  =  |19,26,33|
                          | 5, 6|                  3·3 + 4·6 = 33     |29,40,51|
                                                   3·1 + 4·4 = 29
                                                   3·2 + 4·5 = 40
                                                   3·3 + 4·6 = 51
         
         
       función dividirMatrices([1,2,3],[4,5,6], [1,2],[3,4],[5,6]) -> regresa [28,22],[49,64]
         
                [B]2x3 * [A]3x2 = [C]2x2
                                                  1·1 + 2·3 + 3·5 = 22
                          | 1, 2, 3|   | 1, 2|    1·2 + 2·4 + 3·6 = 28     |28,22|
                B * A  =  | 4, 5, 6| * | 3, 4|  = 4·1 + 5·3 + 6·5 = 49  =  |49,64|
                                       | 5, 6|    4·2 + 5·4 + 6·6 = 64
         
    - Nota: Esta función usa el método "comprobarMatricesSonConformables".
         
    - Código: */
    func dividirMatrices(matrizA:[[Double]], matrizB:[[Double]]) -> ([[Double]]) {
        print("Multiplica A * B")
        var matrizC = iniciarMatriz(filas: matrizA.count, columnas: matrizA.count)
        let indice = 0
            
        if comprobarMatricesSonConformables(matrizA: matrizA, matrizB: matrizB) == true {
            for i in 0..<matrizA[indice].count {
                for j in 0..<matrizA.count {
                    for k in 0..<matrizB[indice].count {
                        matrizC[j][k] += matrizA[j][i] / matrizB[i][k]
                    }
                }
            }
        }
            
        return matrizC
    }
    
    
    
/****************************************multiplicarEscalar******************************************
     
Recibe una matriz y un número, y regresa una matriz C en la que cada uno de sus elementos es igual a multiplicar el número por el elemento de la matriz.
     
    - Ejemplo:
     
       función multiplicarEscalar([1,2],[3,4], 2) -> regresa [2,4],[6,8]
     
                    a * A  =  2 * | 1, 2|  =  | 2, 4|
                                  | 3, 4|     | 6, 8|
     
    - Código: */
    func multiplicarEscalar(matrizA:[[Double]], escalar:Double) -> ([[Double]]) {
        print("Multiplica a * A")
        var matrizC = iniciarMatriz(filas: matrizA.count, columnas: matrizA.count)
        
        for i in 0..<matrizA.count {
            for j in 0..<matrizA.count {
                matrizC[i][j] = escalar * matrizA[i][j]
            }
        }
        
        return matrizC
    }
    
    
    
/************************************eliminarFilaColumnaMatriz**************************************
     
Recibe una matriz, el número de una fila y el número de una columna, y regresa la matriz con la fila y la columna eliminadas.
     
    – Ejemplo:
     
       función eliminarFilaColumnaMatriz([1,2,3],[4,5,6],[7,8,9], 0, 0) -> regresa [5,6],[8,9]
     
            Entrada:   A = | 1, 2, 3|     Salida:   A = | 5, 6|
                           | 4, 5, 6|                   | 8, 9|
                           | 7, 8, 9|
     
     
    – Nota: Esta función es usada para calcular el determinante de una matriz y para calcular la matriz adjunta.
     
    –  Código: */
    func eliminarFilaColumnaMatriz(matrizA:[[Double]], fila:Int, columna:Int) -> ([[Double]]) {
        print("Reducir Matriz eliminando la fila ", fila, " y laa columna ", columna)
        let indice = 0
        var matrizReducida = iniciarMatriz(filas: matrizA.count-1, columnas: matrizA[indice].count-1)
        var i = Int()
        var j = Int()
        
        i = 0
        for i2 in 0..<matrizA.count {
            j = 0
            for j2 in 0..<matrizA[indice].count {
                if i2 != fila && j2 != columna {
                    matrizReducida[i][j] = matrizA[i2][j2]
                    j += 1
                    if j >= matrizReducida.count {
                        i += 1
                    }
                }
            }
        }
        
        return matrizReducida
    }
    
    
    
/************************************calcularDeterminanteMatriz**************************************
     
Recibe una matriz cuadrada, y calcula el determinante de la matriz usando el Teorema de Laplace.
     
     - Ejemplo:
     
        función calcularDeterminanteMatriz([1,-1,2],[-2,0,4],[0,-2,7]) -> regresa 2
     
                 | 1,-1, 2|                 _n_
            A =  |-2, 0, 4|      det(A)  =  \   (-1)^j+1 * a1j * |A1j|
                 | 0,-2, 7|                 /__
                                            j=1
     
                        det(A)  =  (-1)^1+1 *  1 * det| 0, 4|
                                                      |-2, 7|
     
                                 + (-1)^2+1 * -1 * det|-2, 4|
                                                      | 0, 7|
     
                                 + (-1)^3+1 *  2 * det|-2, 0|
                                                      | 0,-2|
     
                        det(A)  =  (-1)^2 *  1 * (0*7 - 4*-2)
                                 + (-1)^3 * -1 * (-2*7 - 0*4)
                                 + (-1)^4 *  2 * (-2*-2 - 0*0)
     
                        det(A)  =  (1*1*8) + (-1*-1*-14) + (1*2*4)
     
                        det(A)  =  8 - 14 + 8  =  2
     
    - Nota: Esta función usa la misma ("calcularDeterminanteMatriz"), de manera recursiva y
           el método "eliminarFilaColumnaMatriz".
     
    - Código: */
    func calcularDeterminanteMatriz(matrizA:[[Double]]) -> (Double) {
        print("Determinante |A|")
        var matrizMenor = iniciarMatriz(filas: matrizA.count-1, columnas: matrizA.count-1)
        var determinanteAux:Double = 0
        var determinante:Double = 0
        let indice = 0
        
        if comprobarMatrizEsCuadrada(matrizA: matrizA) {
            if(matrizA.count == 2) {
                return Double((matrizA[0][0] * matrizA[1][1])  -  (matrizA[1][0] * matrizA[0][1]))
            }
            else {
                for i in 0..<matrizA.count {
                    matrizMenor = eliminarFilaColumnaMatriz(matrizA: matrizA, fila: indice, columna: i)
                    determinanteAux = Double(pow(Double(-1), Double(i))) * Double(matrizA[indice][i]) * calcularDeterminanteMatriz(matrizA:matrizMenor)
                    //determinanteAux = Double(pow(Double(-1), Double(i))) * Double(matrizA[indice][i]) * calcularDeterminanteMatriz(matrizA:eliminarFilaColumnaMatriz(matrizA: matrizA, fila: indice, columna: i))
                    determinante += determinanteAux
                }
                return determinante
            }
        }
        else {
            return determinante
        }
    }
    
    
    
/************************************calcularMatrizTranspuesta***************************************
     
Recibe una matriz y regresa la matriz con las filas y las columnas intercambiadas.
     
    - Ejemplo:
     
       función calcularMatrizTranspuesta([1,-1,2],[-2,0,4],[0,-2,7]) -> regresa [ 1,-2, 0][-1, 0, -2][ 2, 4, 7]
     
                        | 1,-1, 2|                        | 1,-2, 0|
        Entrada:    A = |-2, 0, 4|      Salida:     A^T = |-1, 0,-2|
                        | 0,-2, 7|                        | 2, 4, 7|
     
    - Código: */
    func calcularMatrizTranspuesta(matrizA:[[Double]]) -> ([[Double]]) {
        print("Matriz transpuesta A^T")
        let indice = 0
        var matrizTranspuesta = iniciarMatriz(filas: matrizA[indice].count, columnas: matrizA.count)
        
        for i in 0..<matrizA.count {
            for j in 0..<matrizA[indice].count {
                matrizTranspuesta[j][i] = matrizA[i][j]
            }
        }
        
        return matrizTranspuesta
    }
    
    
    
/****************************************calcularMatrizAdjunta**************************************
     
Recibe una matriz y regresa la matriz adjunta que es igual a la matriz de los elementos adjuntos.
     
     - Ejemplo:
     
        función calcularMatrizAdjunta([1,-1,2],[-2,0,4],[0,-2,7]) -> regresa [8,3,-4,[14,7,-8],[4,2,-2]
     
                  | 1,-2, 0|
            A^T = |-1, 0,-2|          adij  =  (-1)^i+j * |Aij|
                  | 2, 4, 7|
     
            ad11  =  (-1)^1+1 * det| 0,-2|  =  1 * (0*7 - 4*-2) =  8
                                   | 4, 7|
     
            ad12  =  (-1)^1+2 * det|-1,-2|  = -1 * (-1*7 - 2*-2) = 3
                                   | 2, 7|
     
            ad13  =  (-1)^1+3 * det|-1, 0|  =  1 * (-1*4 - 0*2) = -4
                                   | 2, 4|
     
            ad21  =  (-1)^2+1 * det|-2, 0|  = -1 * (-2*7 - 4*0) = 14
                                   | 4, 7|
     
            ad22  =  (-1)^2+2 * det| 1, 0|  =  1 * (1*7 - 0*2) = 7
                                   | 2, 7|
     
            ad23  =  (-1)^2+3 * det| 1,-2|  = -1 * (1*4 - 2*-2) = -8
                                   | 2, 4|
     
            ad31  =  (-1)^3+1 * det|-2, 0|  =  1 * (-2*-2 - 0*0) = 4
                                   | 0,-2|
    
            ad32  =  (-1)^3+2 * det| 1, 0|  = -1 * (1*-2 - 9*-1) = 2
                                   |-1,-2|
     
            ad33  =  (-1)^3+3 * det| 1,-2|  =  1 * (1*0 - -1*-2) = -2
                                   |-1, 0|
     
                                 | 8, 3,-4|
                        Adj(A) = |14, 7,-8|
                                 | 4, 2,-2|
     
     
    - Nota: Esta función usa los metodos "calcularDeterminanteMatriz" y "eliminarFilaColumnaMatriz".
     
    - Código: */
    func calcularMatrizAdjunta(matrizA:[[Double]]) -> ([[Double]]) {
        print("Matriz adjunta Adj(A)")
        var matrizAdjunta = iniciarMatriz(filas: matrizA.count, columnas: matrizA.count)
        
        if comprobarMatrizEsCuadrada(matrizA: matrizA) {
            for i in 0..<matrizA.count {
                for j in 0..<matrizA.count {
                    matrizAdjunta[i][j] = pow(Double(-1), Double(i+j)) * calcularDeterminanteMatriz(matrizA:eliminarFilaColumnaMatriz(matrizA: matrizA, fila: i, columna: j))
                }
            }
        }
        
        return matrizAdjunta
    }

    
    
/****************************************calcularMatrizInversa***************************************
     
Recibe una matriz y regresa su inversa.
     
    - Ejemplo:
     
       función calcularMatrizInversa([1,-1,2],[-2,0,4],[0,-2,7])
       -> regresa [4,1.5,-2][7,3.5,-4][2,1,-1]
     
                 | 1,-1, 2|
            A =  |-2, 0, 4|           A^-1  =  Adj(A^T)/det(A)
                 | 0,-2, 7|
     
                 | 1,-2, 0|                      | 8, 3,-4|
           A^T = |-1, 0,-2|    ->     Adj(A^T) = |14, 7,-8|   ->   det(A)=2
                 | 2, 4, 7|                      | 4, 2,-2|
     
                    | 8, 3,-4|   /       | 4,3/2,-2|
           A^-1  =  |14, 7,-8|  /  2  =  | 7,7/2,-4|
                    | 4, 2,-2| /         | 2, 1 ,-1|
     
    - Nota: Para calcular la matriz inversa se tiene que obtener la matriz adjunta de la matriz
           transpuesta y dividirla entre el determinante, por lo que esta función hace uso de los
           métodos "calcularDeterminanteMatriz", "transponerMatriz", "calcularMatrizAdjunta" y
           "multiplicarEscalar".
     
    - Código: */
    func calcularMatrizInversa(matrizA:[[Double]]) -> ([[Double]]) {
        print("Matriz inversa A^-1")
        var matrizInversa = iniciarMatriz(filas: matrizA.count, columnas: matrizA.count)
        var matrizTranspuesta = iniciarMatriz(filas: matrizA.count, columnas: matrizA.count)
        var matrizAdjunta = iniciarMatriz(filas: matrizA.count, columnas: matrizA.count)
        var determinante:Double = 0
        
        if comprobarMatrizEsCuadrada(matrizA: matrizA) {
            matrizTranspuesta = calcularMatrizTranspuesta(matrizA: matrizA)
            matrizAdjunta = calcularMatrizAdjunta(matrizA: matrizTranspuesta)
            determinante = calcularDeterminanteMatriz(matrizA: matrizA)
            matrizInversa = multiplicarEscalar(matrizA: matrizAdjunta, escalar: 1/determinante)
            //matrizInversa = multiplicarEscalar(matrizA: calcularMatrizAdjunta(matrizA: transponerMatriz(matrizA: matrizA)), escalar: 1/calcularDeterminanteMatriz(matrizA: matrizA))
        }
        
        return matrizInversa
    }

    
    
/********************************************rangoMatriz*******************************************
     
Recibe una matriz y regresa un numero que es igual al numero de filas independientes de la matriz.
     
    - Ejemplo:
     
       función rangoMatriz([1,2,-1],[4,5,6],[2,0,9]) -> regresa 3
     
                | 1, 2,-1|
          A  =  | 4, 5, 6|    ->    rank(A) = 3
                | 2, 0, 9|
     
    - Código: */
    func rangoMatriz(matrizA:[[Double]]) -> (Int) {
        print("Rango rank(A)")
        let rango = matrizA.count
        
        return rango
    }
    
    
    
/********************************************trazaMatriz********************************************
     
Recibe una matriz cuadrada y regresa un vector con los elementos de la diagonal principal.
     
     - Ejemplo:
     
        función trazaMatriz([1,2,3],[4,5,6],[7,8,9]) -> regresa [1,5,9]
     
                  | 1, 2, 3|
            A  =  | 4, 5, 6|    ->    tr(A) = | 1, 5, 9|
                  | 7, 8, 9|
     
    - Código: */
    func trazaMatriz(matrizA:[[Double]]) -> ([Double]) {
        print("Traza tr(A)")
        var traza = Array(repeating: 0.0, count: matrizA.count)
        let indice = 0
        
        if comprobarMatrizEsCuadrada(matrizA: matrizA) == true {
            for i in 0..<matrizA.count {
                for j in 0..<matrizA[indice].count {
                    traza[i] = matrizA[i][j]
                }
            }
        }
        
        return traza
    }
    
    
    
/************************************multiplicarFilaPorEscalar***************************************
 
Recibe una matriz, un renglon y un escalar, y regresa una matriz nueva en la que los elementos del renglón especificado son el resultado de multiplicar sus elementos con el escalar.
     
    - Ejemplo:
     
       función multiplicarFilaPorEscalar([1,2,3],[4,5,6],[7,8,9], 1, 3) -> regresa [1,5,9]
     
                  | 1, 2, 3|
            A  =  | 4, 5, 6|            3*R2 -> R2
                  | 7, 8, 9|
     
                                        3*| 4, 5, 6| -> |12,15,18|
     
                  | 1, 2, 3|
            A' =  |12,15,18|
                  | 7, 8, 9|
     
    - Nota: Esta función es usada para calcular una matriz similar en el que le primer elemento sea igual a 1.
     
    - Código: */
    func multiplicarFilaPorEscalar(matrizA:[[Double]], fila:Int, escalar:Double) -> ([[Double]]) {
        print("Multiplicar: R", fila, "*", escalar, " -> R", fila)
        var matrizNueva = matrizA
        
        for i in 0..<matrizA.count {
            matrizNueva[fila][i] = matrizA[fila][i] * escalar
        }
        
        return matrizNueva
    }
    
    
    
/****************************************intercambiarFilas******************************************
     
Recibe una matriz, dos renglones, y regresa una matriz nueva con los renglones intercambiados.
         
    - Ejemplo:
         
       función intercambiarFilas([1,2,3],[4,5,6],[7,8,9], 1, 2) -> regresa [1,2,3],[7,8,9],[4,5,6]
         
                      | 1, 2, 3|                | 1, 2, 3|
                A  =  | 4, 5, 6|    ->    A' =  | 7, 8, 9|
                      | 7, 8, 9|                | 4, 5, 6|
     
    - Nota: Esta función es usada para calcular una matriz similar en el que le primer elemento sea igual a 1.
         
    - Código: */
    func intercambiarFilas(matrizA:[[Double]], filaA:Int, filaB:Int) -> ([[Double]]) {
        print("Intercambiar: R", filaA, " con R", filaB)
        var matrizNueva = matrizA
            
        for i in 0..<matrizA.count {
            matrizNueva[filaA][i] = matrizA[filaB][i]
            matrizNueva[filaB][i] = matrizA[filaA][i]
        }
            
        return matrizNueva
    }
    
    
    
/************************************intercambiarColumnas******************************************
     
Recibe una matriz, dos columnas, y regresa una matriz nueva con las columnas intercambiados.
             
    - Ejemplo:
             
       función intercambiarFilas([1,2,3],[4,5,6],[7,8,9], 0, 1) -> regresa [2,1,3],[5,4,6],[8,7,9]
             
                          | 1, 2, 3|                | 2, 1, 3|
                    A  =  | 4, 5, 6|    ->    A' =  | 5, 4, 6|
                          | 7, 8, 9|                | 8, 7, 9|
     
    - Nota: Esta función es usada para calcular una matriz similar en el que le primer elemento sea igual a 1.
             
    - Código: */
    func intercambiarColumnas(matrizA:[[Double]], columnaA:Int, columnaB:Int) -> ([[Double]]) {
        print("Intercambiar: C", columnaA, " con C", columnaB)
        var matrizNueva = matrizA
                
        for i in 0..<matrizA[0].count {
            matrizNueva[i][columnaA] = matrizA[i][columnaB]
            matrizNueva[i][columnaB] = matrizA[i][columnaA]
        }
                
        return matrizNueva
    }
    
    
    
/****************************************obtenerIndicesDeElemento**********************************

Recibe una matriz y un numero, y regresa el primer indice en donde encuentra el numero buscado, de lo contrario regresa (-1,-1).
                        
    - Ejemplo:
                     
       función obtenerIndicesDeElemento([1,2,3],[4,5,6],[7,8,9], 4) -> regresa : ( 1, 0)
                     
                                  | 1, 2, 3|
                            A  =  | 4, 5, 6|   ->   (1,0)
                                  | 7, 8, 9|
    
    - Nota: Esta función es usada para calcular una matriz similar en el que le primer elemento sea igual a 1.
     
    - Código: */
    func obtenerIndicesDeElemento(matrizA:[[Double]], elemento:Double, fila:Int, columna:Int) -> (Int, Int) {
        print("Encontrar indices del elemento ", elemento)
        var indiceFila = -1
        var indiceColumna = -1
                    
        for j in columna..<matrizA[0].count {
            for i in fila..<matrizA.count {
                if indiceFila == -1 {
                    if matrizA[i][j] == elemento {
                        indiceFila = i
                        indiceColumna = j
                    }
                }
            }
        }
                        
        return (indiceFila, indiceColumna)
    }
    
    
    
/************************************hacerElementoMatrizUno***************************************

Recibe una matriz, un número de fila y un número de columna, si el elemento de la matriz seleccionado con el numero de fila y columna no es igual a 1, intercambia filas y columnas para colocar un 1 en la posición de filas y columnas recibida, si no encuentra algun elemento igual a 1, multiplica la fila seleccionada por el escalar que haga elemento igual a 1, para regresar una matriz similar en la que el elemento seleccionado por el número de fila y columna es igual a 1.
                            
    - Ejemplo:
                         
       función hacerElementoMatrizUno([2,6,4],[1,2,-2],[5,-1,1], 0,0) -> regresa : [1,2,-2],[2,6,4],[5,-1,1]
                         
     
                  | 2, 6, 4|                                        | 1, 2,-2|
            A  =  | 1, 2,-2|   ->   Intercambia R1 x R2   ->   A' = | 2, 6, 4|
                  | 5,-1, 1|                                        | 5,-1, 1|
     
       función hacerElementoMatrizUno([2,6,4],[2,2,-2],[5,-1,2], 0,0) -> regresa : [1,3,2],[2,2,-2],[5,-1,2]
     
                  | 2, 6, 4|                                        | 1, 3, 2|
            A  =  | 2, 2,-2|   ->   Multiplica R1 * 1/2   ->   A' = | 2, 2,-2|
                  | 5,-1, 2|                                        | 5,-1, 2|
     
    - Nota: Está función  es usada para calcular una matriz similar con el metodo de eliminación de GaussJordan.
                         
    - Código:*/
    func hacerElementoMatrizUno(matrizA:[[Double]], fila:Int, columna:Int) -> [[Double]] {
        var matrizNueva = matrizA
        let indicesDeSiguienteUno = obtenerIndicesDeElemento(matrizA: matrizNueva, elemento: 1, fila: fila, columna: columna)
            
        // Si existe algun elemento siguiente de la martriz igual a 1
        if indicesDeSiguienteUno.0 != -1 {
            // Intercambiar filas y columnas para que el 1 este en la posicion (0,0)
            matrizNueva = intercambiarFilas(matrizA: matrizNueva, filaA: fila, filaB: indicesDeSiguienteUno.0)
            matrizNueva = intercambiarColumnas(matrizA: matrizNueva, columnaA: columna, columnaB: indicesDeSiguienteUno.1)
        }
        // Si no existen elementos en la matriz iguales a 1
        else {
            // Por cada fila de la matriz
            for i in 1..<matrizNueva[0].count {
                // Si el elemento de la fila i es igual a 0
                if matrizNueva[fila][columna] == 0 {
                    // Intercambiar filas para que el primer elemento se diferente de 0
                    matrizNueva = intercambiarFilas(matrizA: matrizNueva, filaA: fila, filaB: i)
                }
            }
            // Dividir la primera fila entre el primer elemento
            matrizNueva = multiplicarFilaPorEscalar(matrizA: matrizNueva, fila: fila, escalar: 1/matrizNueva[fila][columna])
                
        }
            
        return matrizNueva
}
    
    
    
/********************************calcularTranformacionElementalMatriz********************************
     
Recibe una matriz, una fila de inicio, una fila final y un escalar, multiplica el escalar por la fila inicial y la
suma a la fila final para sustituirla en la fila final
     
    - Ejemplo:
     
       función calcularTranformacionElementalMatriz([1,-1,2],[-2,0,4],[0,-2,7], 1, 2, 2) -> regresa [1,-2,0],[0,-2,8],[2,4,7]
     
                | 1,-1, 2|
            A = |-2, 0, 4|             2*R1 + R2 ->  R2
                | 0,-2, 7|
     
                                    =  2*| 1,-1, 2|  +  | 0,-2, 8|
     
                                    =    | 2,-2, 4|  +  | 0,-2, 8|
     
                                    =    | 0,-2, 8|
     
                 | 1,-1, 2|
            A' = | 0,-2, 8|
                 | 0,-2, 7|
     
    - Nota: Está función  es usada para calcular una matriz similar con el metodo de eliminación de GaussJordan.
     
    - Código: */
    func calcularTranformacionElementalMatriz(matrizA:[[Double]], filaIni:Int, filaFin:Int, escalar:Double) -> ([[Double]]) {
        print("Transformar: R", filaIni, "*", escalar, "+ R", filaFin, " =  R", filaFin)
        var matrizResultante = matrizA
        
        for i in 0..<matrizA.count {
            matrizResultante[filaFin][i] = matrizA[filaFin][i] + (matrizA[filaIni][i] * escalar)
        }
        
        return matrizResultante
    }
    
    
    
/****************************************eliminacionGaussJordan************************************
     CORREGIR DOCUMENTACION EJEMPLO Y NOTA
Recibe una matriz, y regresa una matriz similar a la que se le aplicaron transformaciones elementales para que los elementos de la matriz triangular inferior sean iguales a 0.
                     
    - Ejemplo:
                  
       función eliminacionGaussJordan([1,2,3],[4,5,6],[7,8,9]) -> regresa : [1,2,3],[4,5,6],[7,8,9]
                  
                               | 2, 1,-1,  8|             | 1, 0, 0, 2|
                         A  =  |-3,-1, 2,-11|   ->   A' = | 0, 1, 0, 3|
                               |-2, 1, 2, -3|             | 0, 0, 1,-1|
     
    - Nota:
                  
    - Código: */
    func eliminacionGaussJordan(matrizA:[[Double]]) -> ([[Double]]) {
        print("Eliminacion Gauss-Jordan")
        var matrizNueva = matrizA
        
        for i in 0..<matrizNueva.count {
            // Si el primer elemento de la matriz es diferente de 1
            if matrizNueva[i][i] != 1 {
                matrizNueva = hacerElementoMatrizUno(matrizA: matrizNueva, fila: i,columna: i)
            }
            // Hacer todos los elementos de la columna 0 iguales a 0 excepto el primer elemento
            for j in i+1..<matrizNueva[0].count {
                // Si el segundo elemeto de la primer columna es diferente de 0
                if matrizNueva[j][i] != 0 {
                    // Multiplicar R1 por el elemento (1,0) por -1, sumarlo a R2 y sustituirlo por R2
                    // R1*A(1.0)*-1 + R2 -> R2
                    matrizNueva = calcularTranformacionElementalMatriz(matrizA: matrizNueva, filaIni: i, filaFin: j, escalar: -1*matrizNueva[j][i])
                }
            }
        }
        return matrizNueva
    }
    
    //func calcularMatrizConjugada([[Double]]) -> ([[Double]])
    //func reglaCramer([[Double]]) -> ([[Double]])
    //func calcularMatrizLU([[Double]]) -> ([[Double]])
}
