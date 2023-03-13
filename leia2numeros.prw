#Include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Fa�a um Programa que leia 2 n�meros e em seguida pergunte ao usu�rio qual opera��o ele deseja realizar.
O resultado da opera��o deve ser acompanhado de uma frase que diga se o n�mero �:
par ou �mpar;
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
    LOCAL nsoma     :=0
    LOCAL nrestdiv  :=0
    LOCAL cOperacao :=""
    LOCAL cTexto    :=""
    nN1:=Val(FwInputBox("Informe o 1� n�mero: "))
    nN2:=Val(FwInputBox("Informe o 2� n�mero: "))
    nsoma    := nN1+nN2 
    nrestdiv := nN1%nN2 
    cTexto+="Escolha uma das opera��o que Voc� deseja fazer: "+CRLF
    cTexto+="Digite + para SOMA"+CRLF
    cTexto+="Digite - para SUBTRA��O"+CRLF
    cTexto+="Digite * para MULTIPLICA��O"+CRLF
    cTexto+="Digite / para DIVIS�O"
    Alert(cTexto)
    cOperacao:=FwInputBox("Informe a opera��o: ")
    DO CASE
        CASE cOperacao =="+" .AND. nsoma>0
        Alert("A soma �: "+cValToChar(nsoma)+ " � um n�mero positivo!")

        CASE cOperacao =="+" .AND. nsoma<0
        Alert("A soma �: "+cValToChar(nsoma)+ " � um n�mero negativo!")

         CASE cOperacao =="/" .AND. nrestdiv==0 
        Alert("O valor da divis�o �: "+cValToChar(nsoma)+ " � um n�mero par!")

        CASE cOperacao =="/" .AND. nrestdiv<>0
        Alert("O valor da divis�o �: "+cValToChar(nsoma)+ " � um n�mero �mpar!")
        
            OTHERWISE
        Alert("Error! Opera��o informada n�o encontrado!!")
            END
            RETURN()
