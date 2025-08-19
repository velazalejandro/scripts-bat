Option explicit
dim mensajeMenu, opcion, opcionEntero
mensajeMenu = "Menu" & vbCrLf & "Opcion1" & vbCrLf& "Opcion2" & vbCrLf & "Opcion3" & vbCrLf & "Opcion4" & vbCrLf & "Seleccione una opcion:"
msgBox ("La opcion1 suma, La opcion2 resta, La opcion3 multiplica, La opcion4 divide")
opcion = InputBox (mensajeMenu)
'Operacion de casting a entero
opcionEntero = cInt (opcion)
Select case opcionEntero

case 1
	msgbox("Case la variable opcion1 entero vale 1 entonces sumaremos")
		Dim operando1, operando2, Resultado

			operando1=Inputbox("dame el primer operando", "Titulo de la ventana", "7", 200,200)
			operando2=Inputbox("dame el primer operando", "Titulo de la ventana", "10", 200,200)

			Resultado=cint(operando1)+(operando2)

				Msgbox("la suma es:"& Resultado)
case 2
	msgbox("Case la variable opcion2 entero vale 2 entonces restaremos")
		Dim operando3, operando4, Resultado2

			operando3=Inputbox("dame el primer operando")
			operando4=Inputbox("dame el segundo operando")
			Resultado2=cint(operando3)-cint(operando4)

				Msgbox("la resta es:"& Resultado2)
case 3
	msgbox("Case la variable opcion3 entero vale 3 entonces multiplicaremos")
		Dim multiplicando, multiplicador, producto

			multiplicando=Inputbox("dame el primer operando")
			multiplicador=Inputbox("dame el segundo operando")
			producto=cint(multiplicando)*cint(multiplicador)
				Msgbox(multiplicando& " * " & multiplicador &" = " & producto)
case 4
	msgbox("Case la variable opcion4 entero vale 4 entonces dividiremos")
		Dim dividendo, divisor, cociente

			dividendo=Inputbox("dame el primer operando")
			divisor=Inputbox("dame el segundo operando")

			cociente= cDbl(dividendo)/cInt(divisor)

				Msgbox(dividendo & " / "& divisor &" = "& cociente)
case else
		msgbox("Case else")

end Select