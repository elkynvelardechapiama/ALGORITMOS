Algoritmo PUCP
	Definir NomEstudiante Como Caracter
	Definir Carrera Como Entero
	Definir conFecha Como numero 
	Definir Martricula, Mensualidad Como Real
	
	Escribir "*** --- Pontificia Universidad Católica del Perú ---***" 
	Escribir "SISTEMA DE PAGOS DE MATRICULAS Y PENSIONES"
	Escribir "Ingrese el nombre del estudiante: " Sin Saltar
	Leer NomEstudiante
	
	Escribir "¿Qué carrera estudia?"
	Escribir "[1] Computación e Informatica"
	Escribir "[2] Secretariado Ejecutivo"
	Escribir "[3] Administración"
	Escribir "Seleccione la opción: " Sin Saltar
	Leer Carrera
	Si (Carrera = 1) Entonces
		Matricula = 300
		Mensualidad = 450
	FinSi
	
	Si(Carrera = 2) Entonces
			Matricula = 200
			Mensualidad= 350
	FinSi
	Si (Carrera = 3) Entonces
		Matricula = 250
		Mensualidad= 400
	FinSi
	Escribir "¿Esta en el rango de fecha permitido?" Sin Saltar
	Escribir "(1) = Si (0) = No" Sin Saltar
	Leer conFecha
	
	Si (conFecha = 1) Entonces
		Definir concepto Como Entero
		Escribir "El estudiante esta dentro del rango de las fechas permitidas"
		Escribir "¿Qué concepto desea pagar?"
		Escribir "[1] Matricula o mensualidad"
		Escribir "[2] Matricula y mensualidad"
		Escribir "[3] Todo el semestre"
		Escribir "[4] Toda la carrera"
		Escribir "Seleccione el concepto a pagar: " Sin Saltar
		Leer concepto
		FinSi
		Si (concepto=1) Entonces
			Definir opcionMM Como Entero
			Escribir "elige la opcion para pagar: "
			Escribir "[1] Matricula"
			Escribir "[2] Mensualidad"
			Leer opcionMM
			Si opcionMM = 1 Entonces
				Escribir "usted debe pagar: " Matricula
			SiNo
				Escribir "Usted debe pagar: " Mensualidad
			FinSi
		SiNo
			Escribir "No se puede realizar la operacion"
		FinSi
		Si (concepto=2) entonces
			Definir NroMensualidades Como entero 
			Escribir "¿Cuantas mensualidades desea pagar?"
			Leer NroMensualidades
			Si (NroMensualidades >= 2) y (NroMensualidades <= 4 ) Entonces
				Definir NueMatricula, NueMensualidad, MontoPagar Como real 
				NueMatricula = Matricula * 0.05
				NueMensualidad= Mensualidad * 0.10
				MontoPagar = (Matricula-NueMatricula) + ((Mensualidad - NueMensualidad)* 30)
				Escribir "Usted debe pagar: " MontoPagar
			FinSi
			Si (concepto = 4)Entonces
				
				Escribir "No se puede realizar la operacion"
		FinSi
	SiNo
		Escribir "El estudiante esta fuera del rango de las fechas permitidas"
		Definir multa Como Real
		multa = Mensualidad * 0.001
		Mensualidad = Mensualidad + multa
		Escribir "la nueva mensualidad es: " Mensualidad

	FinSi
FinAlgoritmo
