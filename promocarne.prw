#INCLUDE "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
O Hipermercado Tabajara est� com uma promo��o de carnes que � imperd�vel. Confira:
                      At� 5 Kg           Acima de 5 Kg
File Duplo      R$ 4,90 por Kg          R$ 5,80 por Kg
Alcatra         R$ 5,90 por Kg          R$ 6,80 por Kg
Picanha         R$ 6,90 por Kg          R$ 7,80 por Kg
Para atender a todos os clientes, cada cliente poder� levar apenas um dos tipos de carne da promo��o,
por�m n�o h� limites para a quantidade de carne por cliente. Se compra for feita no cart�o Tabajara o
cliente receber� ainda um desconto de 5% sobre o total da compra. Escreva um programa que pe�a o tipo e a
quantidade de carne comprada pelo usu�rio e gere um cupom fiscal, contendo as informa��es da compra: tipo e
 quantidade de carne, pre�o total, tipo de pagamento, valor do desconto e valor a pagar.
@author  Anderson Abreu Rabelo
@since   date
@version version
/*/
//-------------------------------------------------------------------
User Function promocarne()
    Local codcarne:= 0
    Local tippag:= ""
    Local ctexto:= ""
    Local ctexto2:= ""
    Local ctexto3:= ""
    Local quanticarne :=0
    Local desconto1 :=0
    Local totalcarne :=0
    ctexto+= "-----------------------------------------------------------------"+CRLF
    ctexto+= "Caro cliente, informe o c�digo da carne conforme a tabela abaixo:"+CRLF
    ctexto+= "-----------------------------------------------------------------"+CRLF+CRLF
    ctexto+= "                                     At� 5 Kg                 Acima de 5 Kg" +CRLF
    ctexto+="COD 1: File Duplo..... R$ 4,90 por Kg          R$ 5,80 por Kg"+CRLF+CRLF
    ctexto+="COD 2: Alcatra........ R$ 5,90 por Kg          R$ 6,80 por Kg"+CRLF+CRLF
    ctexto+="COD 3: Picanha........ R$ 6,90 por Kg          R$ 7,80 por Kg"+CRLF+CRLF
    alert(ctexto)
    codcarne:=Val(FwInputBox("Digite o c�digo que identifica a carne:"))
    quanticarne:=Val(FwInputBox("Informe quantos KG de carne voc� quer:"))
    ctexto2+= "-----------------------------------------------------------------"+CRLF
    ctexto2+= "Caro cliente, informe o tipo pagamento que ser� usado, digite apenas a letra inicial conforme a tabela abaixo:"+CRLF
    ctexto2+= "-----------------------------------------------------------------"+CRLF+CRLF
    ctexto2+= "C: CR�DITO" +CRLF+CRLF
    ctexto2+= "D: D�BITO"+CRLF+CRLF
    ctexto2+= "T: TABAJARA 5% desconto"+CRLF+CRLF
    ctexto2+= "D: DINHEIRO"+CRLF+CRLF
    Alert(ctexto2)
    tippag:=FwInputBox("Digite a letra inicial para informar o tipo de pagamento:")
    DO CASE
        case tippag =="t" .or. tippag =="T" .or. codcarne ==1 .or. quanticarne <=5
            ctexto3+="Conforme a tabela abaixo o tipo de carne: �: "+cValToChar(codcarne)+CRLF+CRLF
            ctexto3+="-----File Duplo-----"+CRLF+CRLF
            ctexto3+="Tipo de pagamento � cart�o: TABAJARA 5% de desconto"+CRLF+CRLF
            ctexto3+="Valor da carne: R$ 4.90"+CRLF+CRLF
            ctexto3+="Quantidade comprada: "+cValToChar(quanticarne)+" kg"+CRLF+CRLF
            ctexto3+="Valor da compra: R$"+CVALTOCHAR(4.90*quanticarne)+CRLF+CRLF
            desconto1:=Round((4.90*quanticarne)*5/100,2)
            ctexto3+="Valor do desconto: R$ "+cValToChar(desconto1)+CRLF+CRLF
            totalcarne:=Round((4.90*quanticarne),2)
            ctexto3+="Total a pagar: R$ "+cValToChar(totalcarne-desconto1)+CRLF+CRLF
            alert(ctexto3)

        case tippag =="t" .or. tippag =="T" .or. codcarne ==2 .or. quanticarne <=5
            ctexto3+="Conforme a tabela abaixo o tipo de carne: �: "+cValToChar(codcarne)+CRLF+CRLF
            ctexto3+="---- Alcatra---"+CRLF+CRLF
            ctexto3+="tipo de pagamento � T: TABAJARA 5% de desconto"+CRLF+CRLF
            ctexto3+="Valor da carne: R$ 5.90"+CRLF+CRLF
            ctexto3+="Valor da compra: R$"+CVALTOCHAR(5.90*quanticarne)+CRLF+CRLF
            ctexto3+="Quantidade comprada: "+cValToChar(quanticarne)+" kg"+CRLF+CRLF
            desconto1:=Round((5.90*quanticarne)*5/100,2)
            ctexto3+="Valor do desconto: R$ "+cValToChar(desconto1)+CRLF+CRLF
            totalcarne:=Round((5.90*quanticarne),2)
            ctexto3+="Total a pagar: R$ "+cValToChar(totalcarne-desconto1)+CRLF+CRLF
            alert(ctexto3)

        case tippag =="t" .or. tippag =="T" .or. codcarne ==3 .or. quanticarne <=5
            ctexto3+="Conforme a tabela abaixo o tipo de carne: �: "+cValToChar(codcarne)+CRLF+CRLF
            ctexto3+="----Picanha----"+CRLF+CRLF
            ctexto3+="tipo de pagamento � cart�o TABAJARA 5% de desconto"+CRLF+UCRLF
            ctexto3+="Quantidade comprada: "+cValToChar(quanticarne)+" kg"+CRLF+CRLF
            desconto1:=(6.90*quanticarne)*5/100
            ctexto3+="Valor da compra: R$"+CVALTOCHAR(6.90*quanticarne)+CRLF+CRLF
            ctexto3+="Valor do desconto: R$ "+cValToChar(desconto1)+CRLF+CRLF
            totalcarne:=(6.90*quanticarne)
            ctexto3+="Total a pagar: R$ "+cValToChar(totalcarne-desconto1)+CRLF+CRLF
            alert(ctexto3)

        case tippag =="t" .or. tippag =="T" .or. codcarne ==1 .or. quanticarne >5
            ctexto3+="Conforme a tabela abaixo o tipo de carne: �: "+cValToChar(codcarne)+CRLF+CRLF
            ctexto3+="-----File Duplo-----"+CRLF+CRLF
            ctexto3+="Quantidade comprada: "+cValToChar(quanticarne)+" kg"+CRLF+CRLF
            ctexto3+="tipo de pagamento � cart�o TABAJARA 5% de desconto"+CRLF+CRLF
            desconto1:=(5.80*quanticarne)*5/100
            ctexto3+="Valor a pagar sem desconto: R$ "+cValToChar(5.80*quanticarne)+CRLF+CRLF
            ctexto3+="Valor do desconto: R$ "+cValToChar(desconto1)+CRLF+CRLF
            totalcarne:=(5.80*quanticarne)
            ctexto3+="Total a pagar com desconto : R$ "+cValToChar(totalcarne-desconto1)+CRLF+CRLF
            alert(ctexto3)

        case tippag =="t" .or. tippag =="T" .or. codcarne ==2 .or. quanticarne >5
            ctexto3+="Conforme a tabela abaixo o tipo de carne: �: "+cValToChar(codcarne)+CRLF+CRLF
            ctexto3+="------Alcatra------"+CRLF+CRLF
            ctexto3+="Quantidade comprada: "+cValToChar(quanticarne)+" kg"+CRLF+CRLF
            ctexto3+="tipo de pagamento � cart�o TABAJARA 5% de desconto"+CRLF+CRLF
            desconto1:=(6.80*quanticarne)*5/100
            ctexto3+="Valor a pagar sem desconto: R$ "+cValToChar(6.80*quanticarne)+CRLF+CRLF
            ctexto3+="Valor do desconto: R$ "+cValToChar(desconto1)+CRLF+CRLF
            totalcarne:=(6.80*quanticarne)
            ctexto3+="Total a pagar com desconto: R$ "+cValToChar(totalcarne-desconto1)+CRLF+CRLF
            alert(ctexto3)

        case tippag =="t" .or. tippag =="T" .or. codcarne ==3 .or. quanticarne >5
            ctexto3+="Conforme a tabela abaixo o tipo de carne: �: "+cValToChar(codcarne)+CRLF+CRLF
            ctexto3+="------Picanha------"+CRLF+CRLF
            ctexto3+="Quantidade comprada: "+cValToChar(quanticarne)+" kg"+CRLF+CRLF
            ctexto3+="tipo de pagamento � cart�o TABAJARA 5% de desconto"+CRLF+CRLF
            desconto1:=(7.80*quanticarne)*5/100
            ctexto3+="Valor a pagar sem desconto: R$ "+cValToChar(7.80*quanticarne)+CRLF+CRLF
            ctexto3+="Valor do desconto: R$ "+cValToChar(desconto1)+CRLF+CRLF
            totalcarne:=(7.80*quanticarne)
            ctexto3+="Total a pagar com desconto: R$ "+cValToChar(totalcarne-desconto1)+CRLF+CRLF
            alert(ctexto3)

        OTHERWISE
    ENDCASE
Return()
