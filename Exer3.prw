#INCLUDE "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Fa�a um Programa que pe�a um valor e mostre na tela se o valor � positivo ou negativo.
@author  Anderson Abreu Rabelo
@since   26/02/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User Function posinega()
Local valor :=0
valor:=Val(FwInputBox("Informe um valor: "))
  if (valor >0)
  MSGSTOP("Valor digitado � positivo",cValToChar(valor) )
  elseif (valor<0)
  MSGSTOP("Valor digitado � negativo",cValToChar(valor))
  ENDIF
Return()
