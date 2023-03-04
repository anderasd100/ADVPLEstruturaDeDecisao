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
/*/
//-------------------------------------------------------------------
User function notapar()
    Local n1:=0
    Local n2:=0
    Local media:=0
    n1:=Val(FwInputBox("Informe a 1° nota: "))
    n2:=Val(FwInputBox("Informe a 2° nota: "))
    media:=(n1+n2)/2
    Do CASE
        CASE media >=9.0 .or. media <=10.0
        Alert("Sua nota é um A!")
        CASE media >=7.5 .or. media <=9.0
        Alert("Sua nota é um B!")
        CASE media >=6.0 .or. media <=7.5
        Alert("Sua nota é um C!")
        CASE media >=4.0 .or. media <=6.0
        Alert("Sua nota é um D!")
        CASE media >=4.0 .or. media <=0
        Alert("Sua nota é um E!")
        OTHERWISE
        Alert("Error! Valor informado é inválido!")
    END
Return()
