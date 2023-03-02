#include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
As Organizações Tabajara resolveram dar um aumento de salário aos seus colaboradores e lhe contraram para desenvolver o programa que calculará os reajustes.
Faça um programa que recebe o salário de um colaborador e o reajuste segundo o seguinte critério, baseado no salário atual:
salários até R$ 280,00 (incluindo) : aumento de 20%
salários entre R$ 280,00 e R$ 700,00 : aumento de 15%
salários entre R$ 700,00 e R$ 1500,00 : aumento de 10%
salários de R$ 1500,00 em diante : aumento de 5% Após o aumento ser realizado, informe na tela:
o salário antes do reajuste;
o percentual de aumento aplicado;
o valor do aumento;
o novo salário, após o aumento.
@author  Anderson Abreu Rabelo
@since   02/03/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User Function Tabajara()
    Local nome:=""
    Local salario:=0
    Local aumento, novosalario :=0
    nome:=FwInputBox("Informe seu nome: ")
    salario:=Val(FwInputBox(+cValToChar(nome)+ " !"+;
        Chr(10)+"Informe seu salário: "))
    if (salario <=200)
        aumento:=(salario*20)/100
        novosalario:=(aumento+salario)
        Alert("Salário antes do reajuste: "+cValToChar(salario);
        Chr(10)+ "O percentual de aumento aplicado: 20%";
        Chr(10)+ "O valor do aumento: "cValToChar(aumento);
        Chr(10)+ "O novo salário, após o aumento: "+cValToChar(novosalario))
        endif
    if (salario >=200 .And. <=700)
        aumento:=(salario*15)/100
        novosalario:=(aumento+salario)
        Alert("Salário antes do reajuste: "+cValToChar(salario);
        Chr(10)+ "O percentual de aumento aplicado: 15%";
        Chr(10)+ "O valor do aumento: "cValToChar(aumento);
        Chr(10)+ "O novo salário, após o aumento: "+cValToChar(novosalario))
        endif
    if (salario >=700 .And. <=1500)
        aumento:=(salario*10)/100
        novosalario:=(aumento+salario)
        Alert("Salário antes do reajuste: "+cValToChar(salario);
        Chr(10)+ "O percentual de aumento aplicado: 10%";
        Chr(10)+ "O valor do aumento: "cValToChar(aumento);
        Chr(10)+ "O novo salário, após o aumento: "+cValToChar(novosalario))
        endif
    if (salario >1500)
        aumento:=(salario*5)/100
        novosalario:=(aumento+salario)
        Alert("Salário antes do reajuste: "+cValToChar(salario);
        Chr(10)+ "O percentual de aumento aplicado: 5%";
        Chr(10)+ "O valor do aumento: "cValToChar(aumento);
        Chr(10)+ "O novo salário, após o aumento: "+cValToChar(novosalario))
        endif
        Return()