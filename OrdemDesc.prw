#include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Fa�a um Programa que leia tr�s n�meros e mostre-os em ordem decrescente.
@author  Anderson Abreu Rabelo
@since   02/03/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User Function ordemdesc()
descend (DTOS(num1,num2, num3))
Local n:=0
While n <>3
n++
   num1:=Val(FwInputBox("Informe o 1� n�mero: "))
   num2:=Val(FwInputBox("Informe o 2� n�mero: "))
   num3:=Val(FwInputBox("Informe o 3�  n�mero: "))
   Alert("Na ordem decrescente ficou: "+cValToChar(descend)) 
   ENDDO
Return()
