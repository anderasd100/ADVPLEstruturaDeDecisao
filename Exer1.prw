#INCLUDE "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Faça um Programa que peça dois números e imprima o maior deles.
@author  Anderson Abreu Rabelo
@since   26/02/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User Function maior()
Local n1 :=0
Local n2 :=0

n1:=Val(FwInputBox("Informe o primeiro número: "))
n2:=Val(FwInputBox("Informe o segundo número: "))
if n1>n2
Alert("O maior valor digitado foi: "+cValToChar(n1))
Else
    Alert("O maior valor digitado foi: "+cValToChar(n2))
    ENDIF
RETURN()
