#INCLUDE "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Fa�a um Programa que leia um n�mero e exiba o dia correspondente da semana.
(1-Domingo, 2- Segunda, etc.), se digitar outro valor deve aparecer valor inv�lido.
@author  Anderson Abreu Rabelo
@since    04/03/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User Function diasemana()
    Local dia:= Dow()
   // dias:=Val(FwInputBox("Informe o dia correspondente da semana: "))
    //Do CASE
        //Case dia <=31
            Alert("O dia da semana �: "+cValToChar(dia))
        //OTHERWISE
        Alert("O dia informado n�o existe!!!")
    //End
Return()
