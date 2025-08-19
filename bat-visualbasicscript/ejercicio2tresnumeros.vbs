Option Explicit
Dim numero1, numero2, numero3
numero1=Inputbox ("dame el primer numero")
numero2=Inputbox ("dame el segundo numero")
numero3=Inputbox ("dame el tercer numero")
if numero1 > numero2 then
	if numero1 > numero3 then
MsgBox ("El mayor es el numero1")
		else
MsgBox	("El mayor es el numero3")
		end if
else
	if numero2 > numero3 then
MsgBox ("El mayor es el numero2")
		else
MsgBox ("El mayor es el numero3")
		end if
		
end if