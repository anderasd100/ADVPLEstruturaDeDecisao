#INCLUDE "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Faça um Programa que verifique se uma letra digitada é vogal ou consoante.
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
		MSGSTOP("A letra informada é uma VOGAL!",cValToChar(letra))
	else
		MSGSTOP("A letra informada é uma consoante!",cValToChar(letra))
	ENDIF
Return()
