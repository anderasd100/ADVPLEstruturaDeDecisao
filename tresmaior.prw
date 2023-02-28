#INCLUDE "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} tresmaior
Programa que mostra o maior número digitado
@author  Anderson Abreu Rabelo
@since   27/02/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User Function tresmaior()
    Local n1:=0
    Local n2:=0
    Local n3:=0

    n1:=Val(FwInputBox("Informe o primeiro número: "))
    n2:=Val(FwInputBox("Informe o segundo número: "))
    n3:=Val(FwInputBox("Informe o terceiro número: "))
    if (n1>n2) .and. (n1>n3)
        msgstop("O maior número digitado foi: "+cValToChar(n1))
        Endif
        if (n2>n1) .and. (n2>n3)
            msgstop("O maior número digitado foi: "+cValToChar(n2))
            Endif
            if (n3>n1) .and. (n3>n2)
                msgstop("O maior número digitado foi: "+cValToChar(n3))
            else
                Alert("Error!!! Dado informado é inválido!!"+;
                    Chr(10)+"Porfavor digite números!!")
            Endif
            Return()
