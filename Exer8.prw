#include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Fa�a um Programa que leia tr�s n�meros e mostre o maior deles.
@author  Anderson Abreu Rabelo
@since   27/02/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User Function numerosmaior()
    Local n1:=0
    Local n2:=0
    Local n3:=0
    n1:=Val(FwInputBox("Informe o primeiro n�mero: "))
    n2:=Val(FwInputBox("Informe o segundo n�mero: "))
    n3:=Val(FwInputBox("Informe o terceiro n�mero: "))
    if (n1>n2) .And. (n1>n3)
        Alert("O maior n�mero digitado foi: "+cValToChar(n1))
        Endif
        if (n2>n1) .And. (n2>n3)
            Alert("O maior n�mero digitado foi: "+cValToChar(n2))
            Endif
            if (n3>n1) .And. (n3>n2)
                Alert("O maior n�mero digitado foi: "+cValToChar(n3))
                Endif
            Return()
