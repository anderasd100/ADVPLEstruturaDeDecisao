#include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Fa�a	uma	fun��o	que calcule a	m�dia	de	um	aluno	de	acordo	com	o	crit�rio	definido
neste	curso.	Al�m	disso,	 fa�a	uma	segunda	 fun��o	que	informe	o	status	do	aluno	de
acordo	com	a	tabela	a	seguir:
Nota	acima	de	6	-> �Aprovado�
Nota	entre	4	e	6 ->  Conceito	�Verifica��o	Suplementar�
Nota	abaixo	de	4	 -> Conceito	�Reprovado�
@author  Anderson Abreu Rabelo
@since   06/03/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User Function medalunoc()
    Local Nnota1 :=0
    Local Nnota2 :=0
    Local media :=0

    Nnota1:=Val(FwInputBox("Informe sua 1� Nota: "))
    Nnota2:=Val(FwInputBox("Informe sua 2� Nota: "))
    media:=(Nnota1+Nnota2)/2
    Do case
        CASE media >=6
            Alert("Aprovado!!!")
        CASE media >=4 .AND. media <=6
            Alert("Verifica��o Suplementar!!!")
        CASE media < 4
            Alert("Reprovado!!!")
        OTHERWISE
            Alert("Error! Informe somente n�meros!!")
    ENDCASE
Return()
