Algoritmo SistemaAdmisionesUTPL
	Definir limPostulantes, limDatos Como Entero
    limPostulantes <- 300
    limDatos <- 3
	Dimension matrizDatosPostulantes[limPostulantes][limDatos]
    generarNombPostulantes(matrizDatosPostulantes)
    generarCarrPostulantes(matrizDatosPostulantes)
    generarMeritoPrevio(matrizDatosPostulantes)
    Escribir "Nombres\t        |   Inscrpcion Carrera\t|  Mérito "
    Escribir devolverDatos(matrizDatosPostulantes)
FinAlgoritmo
	
SubProceso generarNombPostulantes(matrizDatosPostulantes)
    Dimension nombPostulantes[10]
    Dimension apelPostulantes[10]
    nombPostulantes[1] <- "Maria"
    nombPostulantes[2] <- "Juan"
    nombPostulantes[3] <- "Pedro"
    nombPostulantes[4] <- "Dario"
    nombPostulantes[5] <- "Milka"
    apelPostulantes[1] <- "Carrion"
    apelPostulantes[2] <- "Vazquez"
    apelPostulantes[3] <- "Ruiz"
    apelPostulantes[4] <- "Paz"
    apelPostulantes[5] <- "Quinde"
    Para i <- 0 Hasta Longitud(matrizDatosPostulantes) - 1 Hacer
        indiceAleatNomb <- Aleatorio(0, Longitud(nombPostulantes[i]) - 1)
        indiceAleatApe <- Aleatorio(0, Longitud(apelPostulantes[i]) - 1)
        matrizDatosPostulantes[i][0] <- Concatenar(nombPostulantes[indiceAleatNomb], " ", apelPostulantes[indiceAleatApe])
    FinPara
FinSubProceso


SubProceso  generarCarrPostulantes(matrizDatosPostulantes)
    Dimension nombCarrera[3]
    nombCarrera[1] <- "Quimica"
	nombCarrera[2] <- "fisio"
	nombCarrera[3] <- "Medicina"
    Para i <- 0 Hasta Longitud(matrizDatosPostulantes) - 1 Hacer
        indiceAleatCarr <- Aleatorio(0, Longitud(nombCarrera[i]) - 1)
        matrizDatosPostulantes[i][1] <- nombCarrera[indiceAleatCarr]
    FinPara
FinSubProceso


SubProceso generarMeritoPrevio(matrizDatosPostulantes)
    Dimension  nombMerito[4]
    nombMerito[1] <- "Abanderado" 
	nombMerito[2] <- "Bachillerato Afin"
	nombMerito[3] <- "Capacidad Especial"
	nombMerito[4] <- "Sin Merito"
    Para i <- 0 Hasta Longitud(matrizDatosPostulantes) - 1 Hacer
        indiceAleatMerito <- Aleatorio(0, Longitud(nombMerito[1]) - 1)
        matrizDatosPostulantes[i][2] <- nombMerito[indiceAleatMerito]
    FinPara
FinSubProceso

Funcion devolverDatos(matrizDatosPostulantes)
    Definir data Como Caracter
    Para i <- 0 Hasta Longitud(matrizDatosPostulantes) - 1 Hacer
        data <- Concatenar(data, Formato(" ", matrizDatosPostulantes[i][0], " ", matrizDatosPostulantes[i][1], " ", matrizDatosPostulantes[i][2]))
    FinPara
    devolver data
FinFuncion

subProceso metodoGenerarNota(notas)
	Para i <-0 Hasta 3 Con Paso 1 Hacer
		notas[i] = Aleatorio(0,100)
	FinPara
FinSubProceso


	