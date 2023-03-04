#include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Fa�a um Programa que pergunte em que turno voc� estuda. Pe�a para digitar M-matutino ou V-Vespertino ou N- Noturno.
Imprima a mensagem "Bom Dia!", "Boa Tarde!" ou "Boa Noite!" ou "Valor Inv�lido!", conforme o caso.
@author  Anderson Abreu Rabelo
@since   02/03/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User function turno()
	Local ctexto :=""
    Local turn:=""
	        ctexto:="Informe qual turno voc� estuda: "+CRLF
                     ctexto+="M-Matutino"+CRLF
                     ctexto+="V-Vespertino"+CRLF
                     ctexto+="N-Noturno"
                     Alert(ctexto)
turn:= FwInputBox("Informe a primeira letra do turno: ")
Do case
	case turn =="M" .or. turn == "m"
		Alert("Bom dia!")
	case turn =="V" .or. turn == "v"
		Alert("Boa Tarde!")
	case turn =="N" .or. turn == "n"
		Alert("Boa noite!")
	OTHERWISE
		Alert("Error! nenhuma informa��o encontrada!!!")
	end
Return()

