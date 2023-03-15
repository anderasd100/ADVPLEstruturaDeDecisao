#Include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Faça um Programa que peça os 3 lados de um triângulo. O programa deverá informar se os valores podem ser um triângulo.
Indique, caso os lados formem um triângulo, se o mesmo é: equilátero, isósceles ou escaleno.
Dicas:
Três lados formam um triângulo quando a soma de quaisquer dois lados for maior que o terceiro;
Triângulo Equilátero: três lados iguais;
Triângulo Isósceles: quaisquer dois lados iguais;
Triângulo Escaleno: três lados diferentes;
@author  Anderson Abreu Rabelo
@since   13/03/2023
@version 1.0
/*/
//-------------------------------------------------------------------

USER FUNCTION Trian3()
    LOCAL nLad1    :=0
    LOCAL nLad2    :=0
    LOCAL nLad3    :=0
    LOCAL ctexto   :=""

    ctexto+="Informe os valores de três lados de um triângulo: "
    alert(ctexto)
    nLad1:=Val(FwInputBox("Informe o valor do 1º lado do triângulo: ")) 
    nLad2:=Val(FwInputBox("Informe o valor do 2º lado do triângulo: ")) 
    nLad3:=Val(FwInputBox("Informe o valor do 3º lado do triângulo: "))

        if nLad1 == nLad2 .AND. nLad1 == nLad3 .AND.;
        nLad2 == nLad1 .AND. nLad2 == nLad3 .AND. ;
        nLad3 == nLad1 .AND. nLad3 == nLad2
        Alert("Triângulo Equilátero: três lados iguais")
        ENDIF

        if nLad1 == nLad2 .AND. nLad2 == nLad1 .AND.;
          nLad1 <> nLad3 .AND. nLad2 <> nLad3 
        Alert("Triângulo Isósceles: quaisquer dois lados iguais")
        ENDIF

        if nLad1 <> nLad2 .AND. nLad1 <> nLad3 .AND. ;
        nLad2 <> nLad1 .AND. nLad2 <> nLad3 .AND. ;
        nLad3 <> nLad1 .AND. nLad3 <> nLad2
        Alert("Triângulo Escaleno: três lados diferentes")
        ENDIF
RETURN()
