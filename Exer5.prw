#INCLUDE "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Fa�a um Programa que verifique se uma letra digitada � vogal ou consoante.
@author  Anderson Abreu Rabelo
@since   26/02/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User Function vc()
	Local letra :=""
    letra:=FwInputBox("Informe uma letra: ")
	if letra =="a" .or. letra =="e".or. letra =="i" .or. letra =="o".or. letra =="u";
			.or. letra =="A".or. letra =="E".or. letra =="I".or. letra =="O".or. letra =="U"
		MSGSTOP("A letra informada � uma VOGAL!",cValToChar(letra))
	else
		MSGSTOP("A letra informada � uma consoante!",cValToChar(letra))
	ENDIF
Return()
