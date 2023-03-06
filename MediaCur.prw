#include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Faça	uma	função	que calcule a	média	de	um	aluno	de	acordo	com	o	critério	definido
neste	curso.	Além	disso,	 faça	uma	segunda	 função	que	informe	o	status	do	aluno	de
acordo	com	a	tabela	a	seguir:
Nota	acima	de	6	-> “Aprovado”
Nota	entre	4	e	6 ->  Conceito	“Verificação	Suplementar”
Nota	abaixo	de	4	 -> Conceito	“Reprovado”
@author  Anderson Abreu Rabelo
@since   06/03/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User Function medalunoc()
    Local Nnota1 :=0
    Local Nnota2 :=0
    Local media :=0

    Nnota1:=Val(FwInputBox("Informe sua 1º Nota: "))
    Nnota2:=Val(FwInputBox("Informe sua 2º Nota: "))
    media:=(Nnota1+Nnota2)/2
    Do case
        CASE media >=6
            Alert("Aprovado!!!")
        CASE media >=4 .AND. media <=6
            Alert("Verificação Suplementar!!!")
        CASE media < 4
            Alert("Reprovado!!!")
        OTHERWISE
            Alert("Error! Informe somente números!!")
    ENDCASE
Return()
