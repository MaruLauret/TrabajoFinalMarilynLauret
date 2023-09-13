Algoritmo GestorDeTurnosCosmetologia
	Definir Lunes8a10, Lunes10a12, Lunes14a16, Lunes16a18 como Cadena
 	Lunes8a10 <- ""
	Lunes10a12 <- ""
	Lunes14a16 <- ""
	Lunes16a18 <- ""
	Definir Miercoles8a10, Miercoles10a12, Miercoles14a16, Miercoles16a18 como Cadena
 	Miercoles8a10 <- ""
	Miercoles10a12 <- ""
	Miercoles14a16 <- ""
	Miercoles16a18 <- ""
	Definir Viernes8a10, Viernes10a12, Viernes14a16, Viernes16a18 como Cadena
 	Viernes8a10 <- ""
	Viernes10a12 <- ""
	Viernes14a16 <- ""
	Viernes16a18 <- ""
	Definir TurnosDisponibles como Cadena
	
	Repetir
        Escribir "Bienvenido/a."
		Escribir "Para ver los turnos disponibles ingrese: 1"
        Escribir "Para salir ingrese: 2"
        Escribir "Ingrese una opción: "
        Leer opcion1
		Si opcion1 <1 o opcion1 > 2
			Escribir "Por favor ingrese una opción válida"
		FinSi
	Hasta Que opcion1 = 1 o opcion1 = 2	
	
	Si opcion1 = 1 Entonces
		Escribir "Los horarios disponibles son:"
		Si Lunes8a10 = "" Entonces
			Escribir "Lunes de 08:00 a 10:00"
		FinSi
		Si Lunes10a12 = "" Entonces
			Escribir "Lunes de 10:00 a 12:00"
		FinSi
		Si Lunes14a16 = "" Entonces
			Escribir "Lunes de 14:00 a 16:00"
		FinSi
		Si Lunes16a18 = "" Entonces
			Escribir "Lunes de 16:00 a 18:00"
		FinSi
		Escribir "Para agendar su turno ingrese: 1"
		Escribir "Para salir ingrese: 2"
		Escribir "Por favor ingrese una opción:"
		Leer opcion
			Si opcion = 1 Entonces
				Escribir "Por favor ingrese su nombre:"
				Leer NombreDeCliente
				Repetir
					Escribir NombreDeCliente + ", por favor elegir el día:"
					Escribir "Lunes: 1"
					Escribir "Miércoles: 2"
					Escribir "Viernes: 3"
					Leer Dia
					Si Dia <1 o Dia > 3
						Escribir "Por favor ingrese una opción válida (1, 2 o 3)"
					FinSi
				Hasta Que Dia = 1 o Dia = 2 o Dia = 3
				
				Si Dia = 1
					Repetir
						Escribir NombreDeCliente + " por favor elige un horario para el día lunes:"
						Escribir "Para el turno de 08:00 a 10:00 ingrese: 1"
						Escribir "Para el turno de 10:00 a 12:00 ingrese: 2"
						Escribir "Para el turno de 14:00 a 16:00 ingrese: 3"
						Escribir "Para el turno de 16:00 a 18:00 ingrese: 4"
						Leer HorarioLunes
						Si HorarioLunes < 1 o HorarioLunes > 4
							Escribir "Por favor ingrese una opción válida (1, 2, 3 o 4)"
						FinSi
					Hasta Que HorarioLunes = 1 o HorarioLunes = 2 o HorarioLunes = 3 o HorarioLunes = 4
					
					Si HorarioLunes = 1 Entonces
						Si Lunes8a10 = "" Entonces
							Lunes8a10 = "Reservado"
							Escribir "Reservaste tu turno con éxito. " + NombreDeCliente + ", te esperamos el Lunes a las 08:00 hs."
						Sino Escribir "Lo sentimos, ese turno no está disponible. Por favor, seleccione un turno disponible."
						FinSi
					FinSi
					Si HorarioLunes = 2 Entonces
						Si Lunes10a12 = "" Entonces
							Lunes10a12 = "Reservado"
							Escribir "Reservaste tu turno con éxito. " + NombreDeCliente + ", te esperamos el Lunes a las 10:00 hs."
						Sino Escribir "Lo sentimos, ese turno no está disponible. Por favor, seleccione un turno disponible."
						FinSi
					FinSi
					Si HorarioLunes = 3 Entonces
						Si Lunes14a16 = "" Entonces
							Lunes14a16 = "Reservado"
							Escribir "Reservaste tu turno con éxito. " + NombreDeCliente + ", te esperamos el Lunes a las 14:00 hs."
						Sino Escribir "Lo sentimos, ese turno no está disponible. Por favor, seleccione un turno disponible."
						FinSi
					FinSi
					Si HorarioLunes = 4 Entonces
						Si Lunes16a18 = "" Entonces
							Lunes16a18 = "Reservado"
							Escribir "Reservaste tu turno con éxito. " + NombreDeCliente + ", te esperamos el Lunes a las 16:00 hs."
						Sino Escribir "Lo sentimos, ese turno no está disponible. Por favor, seleccione un turno disponible."
						FinSi
					FinSi
				FinSi
				
				Si Dia = 2
					Escribir NombreDeCliente + " por favor elige un horario para el día miércoles:"
					Mostrar HorariosMiercoles
				FinSi
				
				Si Dia = 3
					Escribir NombreDeCliente + " por favor elige un horario para el día viernes:"
					Mostrar HorariosViernes
				FinSi
			FinSi 	
			
			Si opcion = 2 Entonces
				Escribir "Gracias por su visita. Nos vemos pronto."
			FinSi
	FinSi
	
	Si opcion1 = 2 Entonces
		Escribir "Gracias por su visita. Nos vemos pronto."
	FinSi
	
FinAlgoritmo