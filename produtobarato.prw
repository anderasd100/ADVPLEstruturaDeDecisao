#Include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Fa�a um programa que pergunte o pre�o de tr�s produtos e informe qual produto voc� deve comprar, 
sabendo que a decis�o � sempre pelo mais barato.
@author  Anderson Abreu Rabelo
@since   02/03/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User Function menorvlrprodu()
Local prod1:=0
Local prod2:=0
Local prod3:=0
prod1:=Val(FwInputBox("Informe o pre�o do 1� produto: "))
prod2:=Val(FwInputBox("Informe o pre�o do 2� produto: "))
prod3:=Val(FwInputBox("Informe o pre�o do 3� produto: "))
if (prod1 <prod2) .And. (prod1<prod3)
Alert("Recomendo voc� comprar o produto com pre�o mais barato, que �: R$ "+cValToChar(prod1))
Endif
if (prod2 <prod1) .And. (prod2<prod3)
Alert("Recomendo voc� comprar o produto com pre�o mais barato, que �: R$ "+cValToChar(prod2))
Endif
if (prod3 <prod1) .And. (prod1<prod2)
Alert("Recomendo voc� comprar o produto com pre�o mais barato, que �: R$ "+cValToChar(prod3))
Endif
Return()
