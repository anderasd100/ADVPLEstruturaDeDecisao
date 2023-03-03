#include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Faça um Programa que leia três números e mostre o maior e o menor deles.
@author  Anderson Abreu Rabelo
@since   28/02/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User Function tresnm()
	Local n1:=0
	Local n2:=0
	Local n3:=0
    Local maior:=0
    Local menor:=0
		n1:=Val(FwInputBox("Informe o primeiro número: "))
		n2:=Val(FwInputBox("Informe o segundo número: "))
		n3:=Val(FwInputBox("Informe o terceiro número: "))
        //Achando o maior número:
        maior:=n1
		if n2>maior
        maior:=n2
        ENDIF
		if n3 >maior
        maior:=n3
        ENDIF
         //Achando o menor número:  
        menor := n1 
		if n2<menor
		menor:=n2
        ENDIF
		if n3<menor
		menor:=n3
        ENDIF
        Alert("O maior número é: "+cValToChar(maior)+;
       CHR(10)+"O menor número é: "+cValToChar(menor))
Return()


