#Include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Faça um Programa que verifique se uma letra digitada é "F" ou "M".
 Conforme a letra escrever: F - Feminino, M - Masculino, Sexo Inválido.
@author  Anderson Abreu Rabelo
@since   26/02/2023
@version 1.0
/*/
//-------------------------------------------------------------------

User Function verifl()
	Local l:= ""
	l:=FwInputBox("Informe F se for feminino ou M para masculino: ")
	DO CASE
     CASE l == "M" .or. l == "m"
         Alert("Sexo M-masculino")
         CASE l=="F" .or. l=="f"
         Alert("Sexo F-feminino")
         ENDCASE
		Return()
