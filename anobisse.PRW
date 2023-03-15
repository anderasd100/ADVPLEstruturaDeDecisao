#Include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Faça um Programa que peça um número correspondente a um determinado ano e em seguida informe se este ano é ou não bissexto.
@author  Anderson Abreu Rabelo
@since   13/03/2023
@version 1.0
/*/
//-------------------------------------------------------------------
USER FUNCTION Anobi()
    LOCAL nAno    :=0
    LOCAL div4    :=0
    LOCAL div100  :=0
    LOCAL div400  :=0

nAno:=Val(FwInputBox("Informe um determinado ano: "))
div4:= nAno%4
div100:= nAno%100
div400:= nAno%400
    DO CASE
        CASE div4 ==0 
        Alert("O ano: "+cValToChar(nAno)+ " É BISSEXTO!")

        CASE div4 ==0 .AND. div100 ==0 .AND. div400 ==0
        Alert("O ano: "+cValToChar(nAno)+ " É BISSEXTO!")


        CASE div4 <>0 .OR. div100 <>0 .OR. div400 <>0
        Alert("O ano: "+cValToChar(nAno)+ " NÃO É BISSEXTO!")

        OTHERWISE
        Alert("Error! Por favor informe um ano válido!! Sendo somente números.")

        ENDCASE
            RETURN()
