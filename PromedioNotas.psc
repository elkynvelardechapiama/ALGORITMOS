Algoritmo PromedioNotas
	Definir Nota1, Nota2, Noota3, Promedio Como Real
	Escribir "Ingresa las calificaciones : "
	Leer Nota1
	Leer Nota2
	Leer Nota3
	Promedio = redon(Nota1+Nota2+Nota3)/3
	Si promedio>= 11 Entonces
		Escribir "El promedio es : " promedio ", el estudiante esta APROBADO "
	SiNo
		Escribir "El promedio es : " promedio ", el estudiante esta DESAPROBADO "
	FinSi
FinAlgoritmo