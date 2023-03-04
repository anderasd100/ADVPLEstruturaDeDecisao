#include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Fa�a um programa para o c�lculo de uma folha de pagamento, sabendo que os descontos s�o do Imposto de Renda,
 que depende do sal�rio bruto (conforme tabela abaixo) e 3% para o Sindicato e que o FGTS corresponde a 11%
  do Sal�rio Bruto, mas n�o � descontado (� a empresa que deposita). O Sal�rio L�quido corresponde ao Sal�rio Bruto
   menos os descontos. O programa dever� pedir ao usu�rio o valor da sua hora e a quantidade de horas trabalhadas no m�s.
Desconto do IR:
Sal�rio Bruto at� 900 (inclusive) - isento
Sal�rio Bruto at� 1500 (inclusive) - desconto de 5%
Sal�rio Bruto at� 2500 (inclusive) - desconto de 10%
Sal�rio Bruto acima de 2500 - desconto de 20% Imprima na tela as informa��es, dispostas conforme o exemplo abaixo. No exemplo o valor da hora � 5 e a quantidade de hora � 220.
        Sal�rio Bruto: (5 * 220)        : R$ 1100,00
        (-) IR (5%)                     : R$   55,00  
        (-) INSS ( 10%)                 : R$  110,00
        FGTS (11%)                      : R$  121,00
        Total de descontos              : R$  165,00
        Sal�rio Liquido                 : R$  935,00
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
horasmes:=Val(FwInputBox("Informe a quantidade de horas trabalhada ao m�s:"))
slabruto :=(horasmes*vlrhora)
Do CASE
      case slabruto <=900
      ctexto := "Sal�rio Bruto: R$ "+cValToChar(slabruto) +CRLF 
      ctexto += "IR Isento!"+CRLF
      inss :=(slabruto*5)/100
      ctexto += "INSS R$: "+cValToChar(inss)+CRLF
      fgts :=(slabruto*11)/100
      ctexto += "FGTS R$: "+cValToChar(fgts)+CRLF
      totaldesc:=(ir+inss+fgts)
      ctexto += "Total de desconto: R$ "+cValToChar(totaldesc) +CRLF
      ctexto += "Sal�rio l�quido: R$ "+cValToChar(slabruto-totaldesc)
      Alert(ctexto)

      case slabruto <=1500
      ctexto := "Sal�rio Bruto: R$ "+cValToChar(slabruto) +CRLF
      ir:=(slabruto*5)/100 
      ctexto += "IR: R$ "+CVALTOCHAR(ir)+CRLF
      inss :=(slabruto*5)/100
      ctexto += "INSS R$: "+cValToChar(inss)+CRLF
      fgts :=(slabruto*11)/100
      ctexto += "FGTS R$: "+cValToChar(fgts)+CRLF
      totaldesc:=(ir+inss+fgts)
      ctexto += "Total de desconto: R$ "+cValToChar(totaldesc) +CRLF
      ctexto += "Sal�rio l�quido: R$ "+cValToChar(slabruto-totaldesc)
      Alert(ctexto)

      case slabruto <=2500
      ctexto := "Sal�rio Bruto: R$ "+cValToChar(slabruto) +CRLF
      ir:=(slabruto*10)/100 
      ctexto += "IR: R$ "+CVALTOCHAR(ir)+CRLF
      inss :=(slabruto*5)/100
      ctexto += "INSS R$: "+cValToChar(inss)+CRLF
      fgts :=(slabruto*11)/100
      ctexto += "FGTS R$: "+cValToChar(fgts)+CRLF
      totaldesc:=(ir+inss+fgts)
      ctexto += "Total de desconto: R$ "+cValToChar(totaldesc) +CRLF
      ctexto += "Sal�rio l�quido: R$ "+cValToChar(slabruto-totaldesc)
      Alert(ctexto)

      case slabruto >2500
      ctexto := "Sal�rio Bruto: R$ "+cValToChar(slabruto) +CRLF
      ir:=(slabruto*20)/100 
      ctexto += "IR: R$ "+CVALTOCHAR(ir)+CRLF
      inss :=(slabruto*5)/100
      ctexto += "INSS R$: "+cValToChar(inss)+CRLF
      fgts :=(slabruto*11)/100
      ctexto += "FGTS R$: "+cValToChar(fgts)+CRLF
      totaldesc:=(ir+inss+fgts)
      ctexto += "Total de desconto: R$ "+cValToChar(totaldesc) +CRLF
      ctexto += "Sal�rio l�quido: R$ "+cValToChar(slabruto-totaldesc)
      Alert(ctexto)
OTHERWISE
Alert("Nada encontrado !!!")
END
RETURN()
