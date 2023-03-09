#Include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Um posto está vendendo combustíveis com a seguinte tabela de descontos:
Álcool:
até 20 litros, desconto de 3% por litro
acima de 20 litros, desconto de 5% por litro
Gasolina:
até 20 litros, desconto de 4% por litro
acima de 20 litros, desconto de 6% por litro
Escreva um algoritmo que leia o número de litros vendidos,
o tipo de combustível (codificado da seguinte forma: A-álcool, G-gasolina), calcule e imprima o valor a ser pago pelo cliente sabendo-se que o
preço do litro da gasolina é R$ 2,50 o preço do litro do álcool é R$ 1,90.
@author  Anderson Abreu Rabelo
@since   08/03/2023
@version 1.0
/*/
//-------------------------------------------------------------------
USER FUNCTION POSTOCOMB()
    LOCAL ctexto   :=""
    LOCAL qtdlitro :=0
    LOCAL calc1    :=0
    LOCAL calc2    :=0
    LOCAL tipocomb :=0
    LOCAL descont1 :=0
    LOCAL descont2 :=0
    ctexto+=" TABELA DE DESCONTOS: "+CRLF+CRLF
    ctexto+="------- Alcool: R$ 1.90 por litro -------"+CRLF
    ctexto+=" Abastecer até 20 L, ganha desconto 3% por litro "+CRLF
    ctexto+=" Abastecer acima 20 L, ganha desconto 5% por litro "+CRLF+CRLF
    ctexto+="------- Gasolina: R$ 2.50 por litro -------"+CRLF
    ctexto+=" Abastecer até 20 L, ganha desconto 4% por litro"+CRLF
    ctexto+=" Abastecer acima 20 L, ganha desconto 6% por litro "+CRLF+CRLF
    Alert(ctexto)
    tipocomb:=Val(FwInputBox("Digite 1 para abastecer com Alcool ou 2 para gasolina: "))
    qtdlitro:=Val(FwInputBox("Informe a quantidade de litros desejado: "))
    DO CASE
    CASE tipocomb ==1 .AND. qtdlitro <=20
    calc1:=Round((qtdlitro*1.90),2)
    descont1:=Round((calc1*3)/100,2)
    ctexto+="----------- Abastecido com Alcool ------------"+CRLF +CRLF 
    ctexto+="Valor do Litro informado: "+cValToChar(qtdlitro)+CRLF 
    ctexto+="Valor total: R$ "+cValToChar(calc1)+CRLF 
     ctexto+="Porcentagem do desconto aplicado: 3%"+CRLF
    ctexto+="Valor a descontar: R$ "+cValToChar(descont1)+CRLF 
    ctexto+="Valor líquido a pagar: R$ "+cValToChar(calc1-descont1)+CRLF 
    Alert(ctexto)

    CASE tipocomb ==1 .AND. qtdlitro >20
    calc1:=Round((qtdlitro*1.90),2)
    descont1:=Round((calc1*5)/100,2)
    ctexto+="----------- Abastecido com Alcool ------------"+CRLF +CRLF 
    ctexto+="Valor do Litro informado: "+cValToChar(qtdlitro)+CRLF 
    ctexto+="Valor total: R$ "+cValToChar(calc1)+CRLF 
    ctexto+="Porcentagem do desconto aplicado: 5%"+CRLF
    ctexto+="Valor a descontar: R$ "+cValToChar(descont1)+CRLF 
    ctexto+="Valor líquido a pagar: R$ "+cValToChar(calc1-descont1)+CRLF 
    Alert(ctexto)
    ///////////////////////////////////////////////////////////////////
    CASE tipocomb ==2 .AND. qtdlitro <=20
    calc2:=Round((qtdlitro*2.50),2)
    descont2:=Round((calc2*4)/100,2)
    ctexto+="----------- Abastecido com Gasolina ------------"+CRLF +CRLF 
    ctexto+="Valor do Litro informado: "+cValToChar(qtdlitro)+CRLF 
    ctexto+="Valor total: R$ "+cValToChar(calc2)+CRLF 
    ctexto+="Porcentagem do desconto aplicado: 4%"+CRLF
    ctexto+="Valor a descontar: R$ "+cValToChar(descont2)+CRLF 
    ctexto+="Valor líquido a pagar: R$ "+cValToChar(calc2-descont2)+CRLF 
    Alert(ctexto)

    CASE tipocomb ==2 .AND. qtdlitro >20
    calc2:=Round((qtdlitro*2.50),2)
    descont2:=Round((calc2*6)/100,2)
    ctexto+="----------- Abastecido com Gasolina ------------"+CRLF +CRLF 
    ctexto+="Valor do Litro informado: "+cValToChar(qtdlitro)+CRLF 
    ctexto+="Valor total: R$"+cValToChar(calc2)+CRLF
    ctexto+="Porcentagem do desconto aplicado: 6%"+CRLF
    ctexto+="Valor a descontar: R$ "+cValToChar(descont2)+CRLF 
    ctexto+="Valor líquido a pagar: R$ "+cValToChar(calc2-descont2)+CRLF 
    Alert(ctexto)
    OTHERWISE
    ALERT("ERROR! Valores informados inválido!!!")
    ENDCASE
RETURN()
