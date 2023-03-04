#include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Faça um programa para o cálculo de uma folha de pagamento, sabendo que os descontos são do Imposto de Renda,
 que depende do salário bruto (conforme tabela abaixo) e 3% para o Sindicato e que o FGTS corresponde a 11%
  do Salário Bruto, mas não é descontado (é a empresa que deposita). O Salário Líquido corresponde ao Salário Bruto
   menos os descontos. O programa deverá pedir ao usuário o valor da sua hora e a quantidade de horas trabalhadas no mês.
Desconto do IR:
Salário Bruto até 900 (inclusive) - isento
Salário Bruto até 1500 (inclusive) - desconto de 5%
Salário Bruto até 2500 (inclusive) - desconto de 10%
Salário Bruto acima de 2500 - desconto de 20% Imprima na tela as informações, dispostas conforme o exemplo abaixo. No exemplo o valor da hora é 5 e a quantidade de hora é 220.
        Salário Bruto: (5 * 220)        : R$ 1100,00
        (-) IR (5%)                     : R$   55,00  
        (-) INSS ( 10%)                 : R$  110,00
        FGTS (11%)                      : R$  121,00
        Total de descontos              : R$  165,00
        Salário Liquido                 : R$  935,00
@author  Anderson Abreu Rabelo
@since   03/03/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User Function folhapaga()
Local vlrhora:=0
Local horasmes:= 0
Local ctexto:=""
Local slabruto:=0
Local totaldesc:=0
Local ir:=0
Local inss:=0
Local fgts:=0
vlrhora:=Val(FwInputBox("Informe o valor da sua hora: R$"))
horasmes:=Val(FwInputBox("Informe a quantidade de horas trabalhada ao mês:"))
slabruto :=(horasmes*vlrhora)
Do CASE
      case slabruto <=900
      ctexto := "Salário Bruto: R$ "+cValToChar(slabruto) +CRLF 
      ctexto += "IR Isento!"+CRLF
      inss :=(slabruto*5)/100
      ctexto += "INSS R$: "+cValToChar(inss)+CRLF
      fgts :=(slabruto*11)/100
      ctexto += "FGTS R$: "+cValToChar(fgts)+CRLF
      totaldesc:=(ir+inss+fgts)
      ctexto += "Total de desconto: R$ "+cValToChar(totaldesc) +CRLF
      ctexto += "Salário líquido: R$ "+cValToChar(slabruto-totaldesc)
      Alert(ctexto)

      case slabruto <=1500
      ctexto := "Salário Bruto: R$ "+cValToChar(slabruto) +CRLF
      ir:=(slabruto*5)/100 
      ctexto += "IR: R$ "+CVALTOCHAR(ir)+CRLF
      inss :=(slabruto*5)/100
      ctexto += "INSS R$: "+cValToChar(inss)+CRLF
      fgts :=(slabruto*11)/100
      ctexto += "FGTS R$: "+cValToChar(fgts)+CRLF
      totaldesc:=(ir+inss+fgts)
      ctexto += "Total de desconto: R$ "+cValToChar(totaldesc) +CRLF
      ctexto += "Salário líquido: R$ "+cValToChar(slabruto-totaldesc)
      Alert(ctexto)

      case slabruto <=2500
      ctexto := "Salário Bruto: R$ "+cValToChar(slabruto) +CRLF
      ir:=(slabruto*10)/100 
      ctexto += "IR: R$ "+CVALTOCHAR(ir)+CRLF
      inss :=(slabruto*5)/100
      ctexto += "INSS R$: "+cValToChar(inss)+CRLF
      fgts :=(slabruto*11)/100
      ctexto += "FGTS R$: "+cValToChar(fgts)+CRLF
      totaldesc:=(ir+inss+fgts)
      ctexto += "Total de desconto: R$ "+cValToChar(totaldesc) +CRLF
      ctexto += "Salário líquido: R$ "+cValToChar(slabruto-totaldesc)
      Alert(ctexto)

      case slabruto >2500
      ctexto := "Salário Bruto: R$ "+cValToChar(slabruto) +CRLF
      ir:=(slabruto*20)/100 
      ctexto += "IR: R$ "+CVALTOCHAR(ir)+CRLF
      inss :=(slabruto*5)/100
      ctexto += "INSS R$: "+cValToChar(inss)+CRLF
      fgts :=(slabruto*11)/100
      ctexto += "FGTS R$: "+cValToChar(fgts)+CRLF
      totaldesc:=(ir+inss+fgts)
      ctexto += "Total de desconto: R$ "+cValToChar(totaldesc) +CRLF
      ctexto += "Salário líquido: R$ "+cValToChar(slabruto-totaldesc)
      Alert(ctexto)
OTHERWISE
Alert("Nada encontrado !!!")
END
RETURN()
