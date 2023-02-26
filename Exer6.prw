#INCLUDE "totvs.ch"

User /*/{Protheus.doc} 
@type  Exerccase
@author Anderson Abreu Rabelo
@date 26/12/2023
@version 1.0
    /*/
User Function Exercase()
	Local mes := MONTH(date())
	local perio :=""
	do CASE
	case mes <=3
    perio :="Primeiro Trimestre"
    case mes >=4 .and. mes =6
    perio:="Segundo Trimestre"
    case mes >=7 .and. mes <=9
    perio:="Terceiro Trimestre"
    OTHERWISE
     perio:= "Quarto trimestre"
		ENDCASE
        Alert(perio)
        Return ()
