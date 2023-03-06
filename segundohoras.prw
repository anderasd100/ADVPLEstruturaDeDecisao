#Include "totvs.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} function
Leia	 do	 usuário	 o	 tempo	 em	 segundos	 e	 o	 escreva	 em	 horas,	 minutos	 e	 segundos.	
Utilize	 cinco	 métodos: para	 a	 leitura	 e	 escrita	 de	 dados e para	 obtenção	 de	 horas,	
minutos	e	segundos	a	partir	do	tempo	em	segundos.	
@author  Anderson Abreu Rabelo
@since   06/03/20223
@version 1.0
/*/
//-------------------------------------------------------------------
User Function tempseg()
Local tempseg :=0
Local calch :=0
Local  calcm :=0
Local ctexto :=""
 
tempseg:=Val(FwInputBox("Informe um tempo em segundos: "))
calch:=(tempseg/3600)
calcm:=(tempseg/60)
ctexto+=cValToChar(Round(calch,0))+" Hora"+ CRLF
ctexto+=cValToChar(calcm)+" minuto "+CRLF
ctexto+=cValToChar(tempseg)+" segundos "
Alert(ctexto)
Return()
