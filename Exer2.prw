#INCLUDE "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Função data CTOD
@author  Anderson Abreu Rabelo
@since   26/02/2023
@version 1.0
/*/
//-------------------------------------------------------------------
//Data: Pega a hora conforme está no servidor, máquina local.

User Function datas()
 Local dvencimento := CTOD("28/02/2023", "DD/MM/YYYY" )
     if Date() > dvencimento
       MSGSTOP("Vencimento ultrapassado","Atenção!!!" )
       else
        MSGSTOP("Dentro do prazo", "Fique tranquilo!!" )
        ENDIF
RETURN()
