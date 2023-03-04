#INCLUDE "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Faça um programa que lê as duas notas parciais obtidas por um aluno numa disciplina ao longo de um semestre,
e calcule a sua média. A atribuição de conceitos obedece à tabela abaixo:
  Média de Aproveitamento  Conceito
  Entre 9.0 e 10.0        A
  Entre 7.5 e 9.0         B
  Entre 6.0 e 7.5         C
  Entre 4.0 e 6.0         D
  Entre 4.0 e zero        E
@author  Anderson A R
@since   03/03/2023
@version 1.0
O algoritmo deve mostrar na tela as notas, a média, o conceito correspondente e a mensagem “APROVADO”
se o conceito for A, B ou C ou “REPROVADO” se o conceito for D ou E.
/*/
//-------------------------------------------------------------------
User function notapar()
    Local n1:=0
    Local n2:=0
    Local media:=0
    Local ctexto:=""
    n1:=Val(FwInputBox("Informe a 1° nota: "))
    n2:=Val(FwInputBox("Informe a 2° nota: "))
    media:=(n1+n2)/2
    Do CASE
        CASE media >=9.0 .AND. media <=10.0
        ctexto+=("1° Nota: "+cValToChar(n1))+CRLF
        ctexto+=("2° Nota: "+cValToChar(n2))+CRLF
        ctexto+=("média: "+cValToChar(media))+CRLF
        ctexto+=("Conceito correspondente: A")+CRLF
        ctexto+=("APROVADO!!")
        Alert(ctexto)

        CASE media >=7.5 .AND. media <=9.0
        ctexto+=("1° Nota: "+cValToChar(n1))+CRLF
        ctexto+=("2° Nota: "+cValToChar(n2))+CRLF
        ctexto+=("média: "+cValToChar(media))+CRLF
        ctexto+=("Conceito correspondente: B")+CRLF
        ctexto+=("APROVADO!!")
        Alert(ctexto)
        CASE media >=6.0 .AND. media <=7.5
        ctexto+=("1° Nota: "+cValToChar(n1))+CRLF
        ctexto+=("2° Nota: "+cValToChar(n2))+CRLF
        ctexto+=("média: "+cValToChar(media))+CRLF
        ctexto+=("Conceito correspondente: C")+CRLF
        ctexto+=("APROVADO!!")
        Alert(ctexto)
        CASE media >=4.0 .AND. media <=6.0
        ctexto+=("1° Nota: "+cValToChar(n1))+CRLF
        ctexto+=("2° Nota: "+cValToChar(n2))+CRLF
        ctexto+=("média: "+cValToChar(media))+CRLF
        ctexto+=("Conceito correspondente: D")+CRLF
        ctexto+=("REPROVADO!!")
        Alert(ctexto)
        CASE media >=4.0 .AND. media <=0
        ctexto+=("1° Nota: "+cValToChar(n1))+CRLF
        ctexto+=("2° Nota: "+cValToChar(n2))+CRLF
        ctexto+=("média: "+cValToChar(media))+CRLF
        ctexto+=("Conceito correspondente: E")+CRLF
        ctexto+=("REPROVADO!!")
        Alert(ctexto)
        OTHERWISE
        Alert("Error! Valor informado é inválido!")
    END
Return()
