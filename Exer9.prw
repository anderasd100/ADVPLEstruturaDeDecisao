#include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Fa�a um Programa que leia tr�s n�meros e mostre o maior e o menor deles.
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
		n1:=Val(FwInputBox("Informe o primeiro n�mero: "))
		n2:=Val(FwInputBox("Informe o segundo n�mero: "))
		n3:=Val(FwInputBox("Informe o terceiro n�mero: "))
        //Achando o maior n�mero:
        maior:=n1
		if n2>maior
        maior:=n2
        ENDIF
		if n3 >maior
        maior:=n3
        ENDIF
         //Achando o menor n�mero:  
        menor := n1 
		if n2<menor
		menor:=n2
        ENDIF
		if n3<menor
		menor:=n3
        ENDIF
        Alert("O maior n�mero �: "+cValToChar(maior)+;
       CHR(10)+"O menor n�mero �: "+cValToChar(menor))
Return()


