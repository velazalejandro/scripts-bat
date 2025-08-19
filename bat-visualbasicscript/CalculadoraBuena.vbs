Option explicit
dim mensajeMenu, opcion, opcionEntero
mensajeMenu = "Menu" & vbCrLf & "Opcion1" & vbCrLf & "Opcion2" & vbCrLf & "Opcion3" & vbCrLf & "Opcion4" & vbCrLf & "Seleccione una opcion:"
msgBox ("La opcion1 suma" & vbCrLf & "La opcion2 resta" & vbCrLf & "La opcion3 multiplica" & vbCrLf & "La opcion4 divide")
opcion = InputBox (mensajeMenu)
'Operacion de casting a entero
opcionEntero = cint (opcion)
Select case opcionEntero

case 1
	msgbox("Case la variable opcion1 entero vale 1 entonces sumaremos")
		Dim operando1, operando2, Resultado

			operando1=Inputbox("dame el primer operando", "Sumar", "7", 200,200)
			operando2=Inputbox("dame el primer operando", "Sumar", "10", 200,200)

			Resultado=cint(operando1)+(operando2)

				Msgbox("la suma es:"& Resultado)
case 2
	msgbox("Case la variable opcion2 entero vale 2 entonces restaremos")
		Dim operando3, operando4, Resultado2

			operando3=Inputbox("dame el primer operando", "Resta", "7", 200,200)
			operando4=Inputbox("dame el segundo operando", "Resta", "7", 200,200)
			Resultado2=cint(operando3)-cint(operando4)

				Msgbox("la resta es:"& Resultado2)
case 3
	msgbox("Case la variable opcion3 entero vale 3 entonces multiplicaremos")
		Dim multiplicando, multiplicador, producto

			multiplicando=Inputbox("dame el primer operando", "Multiplicacion", "7", 200,200)
			multiplicador=Inputbox("dame el segundo operando", "Multiplicacion", "7", 200,200)
			producto=cint(multiplicando)*cint(multiplicador)
				Msgbox(multiplicando & " * " & multiplicador &" = " & producto)
case 4
	msgbox("Case la variable opcion4 entero vale 4 entonces dividiremos")
		Dim dividendo, divisor, cociente

			dividendo=Inputbox("dame el primer operando", "Division", "7", 200,200)
			divisor=Inputbox("dame el segundo operando", "Division", "7", 200,200)

			cociente= cDbl(dividendo)/cInt(divisor)

				Msgbox(dividendo & " / "& divisor &" = "& cociente)
case else
		msgbox("Case else")

end Select
	msgbox ("No has querido elegir ninguna opcion")