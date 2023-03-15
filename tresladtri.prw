#Include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Fa�a um Programa que pe�a os 3 lados de um tri�ngulo. O programa dever� informar se os valores podem ser um tri�ngulo.
Indique, caso os lados formem um tri�ngulo, se o mesmo �: equil�tero, is�sceles ou escaleno.
Dicas:
Tr�s lados formam um tri�ngulo quando a soma de quaisquer dois lados for maior que o terceiro;
Tri�ngulo Equil�tero: tr�s lados iguais;
Tri�ngulo Is�sceles: quaisquer dois lados iguais;
Tri�ngulo Escaleno: tr�s lados diferentes;
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

    ctexto+="Informe os valores de tr�s lados de um tri�ngulo: "
    alert(ctexto)
    nLad1:=Val(FwInputBox("Informe o valor do 1� lado do tri�ngulo: ")) 
    nLad2:=Val(FwInputBox("Informe o valor do 2� lado do tri�ngulo: ")) 
    nLad3:=Val(FwInputBox("Informe o valor do 3� lado do tri�ngulo: "))

        if nLad1 == nLad2 .AND. nLad1 == nLad3 .AND.;
        nLad2 == nLad1 .AND. nLad2 == nLad3 .AND. ;
        nLad3 == nLad1 .AND. nLad3 == nLad2
        Alert("Tri�ngulo Equil�tero: tr�s lados iguais")
        ENDIF

        if nLad1 == nLad2 .AND. nLad2 == nLad1 .AND.;
          nLad1 <> nLad3 .AND. nLad2 <> nLad3 
        Alert("Tri�ngulo Is�sceles: quaisquer dois lados iguais")
        ENDIF

        if nLad1 <> nLad2 .AND. nLad1 <> nLad3 .AND. ;
        nLad2 <> nLad1 .AND. nLad2 <> nLad3 .AND. ;
        nLad3 <> nLad1 .AND. nLad3 <> nLad2
        Alert("Tri�ngulo Escaleno: tr�s lados diferentes")
        ENDIF
RETURN()
