#include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} notaspar
Programa que informa se um aluno foi aprovado ou reprovado
@author  Anderson Abreu Rabelo
@since   27/02/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User Function notaspar()
	Local n1:=0
	Local n2:=0
	Local media:=0

	n1:=Val(FwInputBox("Informe sua primeira nota: "))
	n2:=Val(FwInputBox("Informe sua segunda nota: "))
	media:= (n1+n2)/2
	if media >=7
		Alert("Aprovado!")
        ENDIF
		If media <7
			Alert("Reprovado!")
            ENDIF
			if media ==10
				Alert("Aprovado com Distinção!!")
			ENDIF
			RETURN()
