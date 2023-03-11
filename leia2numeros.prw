#Include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Faça um Programa que leia 2 números e em seguida pergunte ao usuário qual operação ele deseja realizar.
O resultado da operação deve ser acompanhado de uma frase que diga se o número é:
par ou ímpar;
positivo ou negativo;
inteiro ou decimal.
@author  Anderson Abreu Rabelo
@since   11/03/2023
@version 1.0
/*/
//-------------------------------------------------------------------
USER FUNCTION Leia2n()
    LOCAL nN1       :=0
    LOCAL nN2       :=0
    LOCAL nResult   :=0
    LOCAL nsoma     :=0
    LOCAL cOperacao :=""
    LOCAL cTexto    :=""
    nN1:=Val(FwInputBox("Informe o 1° número: "))
    nN2:=Val(FwInputBox("Informe o 2° número: "))
    cTexto+=("Escolha uma operação que Você deseja fazer: ")+CRLF
    cTexto+=("Digite + para SOMA")+CRLF
    cTexto+=("Digite - para SUBTRAÇÃO")+CRLF
    cTexto+=("Digite * para MULTIPLICAÇÃO")+CRLF
    cTexto+=("Digite / para DIVISÃO")+CRLF
    Alert(cTexto)
    cOperacao:=FwInputBox("Informe a operação: ")
    DO CASE
        CASE cOperacao =="+" .AND. cOperacao>0
        nsoma:= nN1+nN2 


            RETURN()
