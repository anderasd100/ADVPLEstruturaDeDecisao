#Include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Faça um programa que pergunte o preço de três produtos e informe qual produto você deve comprar, 
sabendo que a decisão é sempre pelo mais barato.
@author  Anderson Abreu Rabelo
@since   02/03/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User Function menorvlrprodu()
Local prod1:=0
Local prod2:=0
Local prod3:=0
prod1:=Val(FwInputBox("Informe o preço do 1º produto: "))
prod2:=Val(FwInputBox("Informe o preço do 2º produto: "))
prod3:=Val(FwInputBox("Informe o preço do 3º produto: "))
if (prod1 <prod2) .And. (prod1<prod3)
Alert("Recomendo você comprar o produto com preço mais barato, que é: R$ "+cValToChar(prod1))
Endif
if (prod2 <prod1) .And. (prod2<prod3)
Alert("Recomendo você comprar o produto com preço mais barato, que é: R$ "+cValToChar(prod2))
Endif
if (prod3 <prod1) .And. (prod1<prod2)
Alert("Recomendo você comprar o produto com preço mais barato, que é: R$ "+cValToChar(prod3))
Endif
Return()
