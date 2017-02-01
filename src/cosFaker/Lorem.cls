Class cosFaker.Lorem Extends %RegisteredObject
{

ClassMethod Word() As %String
{
	Q ..LoremIpsum()
}

ClassMethod Words(pNum As %Integer = "") As %String
{
	Set:pNum="" pNum = 3
	For k=1:1:pNum {
		Set $List(words,*+1) = ..Word()
	}
	Quit $ListToString(words, " ")
}

ClassMethod Sentence(pWordCount As %Integer = "", pMin As %Integer = 3, pMax As %Integer = 10) As %String
{
	If pWordCount = "" {
		For {
			Set pWordCount = $Random(10)
			Quit:((pWordCount>pMin)&&(pWordCount < pMax))
		}
	}
	
	Set sentence = ..Words(pWordCount)
	Quit $ZConvert($Extract(sentence,1,1), "U") _ $Extract(sentence,2,*) _ "."
}

ClassMethod Sentences(pSentenceCount As %Integer = "", pSeparator As %String = "") As %String
{
	If pSentenceCount = "" {
		For {
			Set pSentenceCount = $Random(6)
			Quit:pSentenceCount>2
		}
	}
	
	Set:pSeparator="" pSeparator = " "
	
	For k=1:1:pSentenceCount {
		Set $List(sentences,*+1) = ..Sentence()
	}

	Quit $ListToString($Get(sentences), pSeparator)
}

ClassMethod Paragraph(pSentenceCount As %Integer = "") As %String
{
	Set:pSentenceCount="" pSentenceCount = 3
	Quit ..Sentences(pSentenceCount + $Random(3))
}

ClassMethod Paragraphs(pParagraphCount As %Integer = "", pSeparator As %String = "") As %String
{
	Set:pParagraphCount="" pParagraphCount = 3
	Set:pSeparator="" pSeparator = $Char(10) _ $Char(13) ; \n \r OR LF CR
	
	For k=1:1:pParagraphCount {
		Set $List(paragraphs,*+1) = ..Paragraph()
	}
	
	Quit $ListToString($Get(paragraphs), pSeparator)
}

ClassMethod Lines(pLineCount As %Integer = "") As %String
{
	If pLineCount = "" {
		For {
			Set pLineCount = $Random(5)
			Quit:pLineCount>1
		}
	}
	
	Quit ..Sentences(pLineCount, $Char(10))
}

ClassMethod Text(pTimes As %Integer = 1)
{
	Set output = ""
	For k=1:1:pTimes {
		Set rand = $Random(7)

		If rand = 1 { Set output = output _ ..Word() }
		ElseIf rand = 2 { Set output = output _ ..Words() }
		ElseIf rand = 3 { Set output = output _ ..Sentence() }
		ElseIf rand = 4 { Set output = output _ ..Sentences() }
		ElseIf rand = 5 { Set output = output _ ..Paragraph() }
		ElseIf rand = 6 { Set output = output _ ..Paragraphs() }
		ElseIf rand = 7 { Set output = output _ ..Lines() }
		
	}
	
	Quit output
}

ClassMethod LoremIpsum() As %String [ Private ]
{
	Set $List(lorem, *+1) = "alias"
    Set $List(lorem, *+1) = "consequatur"
    Set $List(lorem, *+1) = "aut"
    Set $List(lorem, *+1) = "perferendis"
    Set $List(lorem, *+1) = "sit"
    Set $List(lorem, *+1) = "voluptatem"
    Set $List(lorem, *+1) = "accusantium"
    Set $List(lorem, *+1) = "doloremque"
    Set $List(lorem, *+1) = "aperiam"
    Set $List(lorem, *+1) = "eaque"
    Set $List(lorem, *+1) = "ipsa"
    Set $List(lorem, *+1) = "quae"
    Set $List(lorem, *+1) = "ab"
    Set $List(lorem, *+1) = "illo"
    Set $List(lorem, *+1) = "inventore"
    Set $List(lorem, *+1) = "veritatis"
    Set $List(lorem, *+1) = "et"
    Set $List(lorem, *+1) = "quasi"
    Set $List(lorem, *+1) = "architecto"
    Set $List(lorem, *+1) = "beatae"
    Set $List(lorem, *+1) = "vitae"
    Set $List(lorem, *+1) = "dicta"
    Set $List(lorem, *+1) = "sunt"
    Set $List(lorem, *+1) = "explicabo"
    Set $List(lorem, *+1) = "aspernatur"
    Set $List(lorem, *+1) = "aut"
    Set $List(lorem, *+1) = "odit"
    Set $List(lorem, *+1) = "aut"
    Set $List(lorem, *+1) = "fugit"
    Set $List(lorem, *+1) = "sed"
    Set $List(lorem, *+1) = "quia"
    Set $List(lorem, *+1) = "consequuntur"
    Set $List(lorem, *+1) = "magni"
    Set $List(lorem, *+1) = "dolores"
    Set $List(lorem, *+1) = "eos"
    Set $List(lorem, *+1) = "qui"
    Set $List(lorem, *+1) = "ratione"
    Set $List(lorem, *+1) = "voluptatem"
    Set $List(lorem, *+1) = "sequi"
    Set $List(lorem, *+1) = "nesciunt"
    Set $List(lorem, *+1) = "neque"
    Set $List(lorem, *+1) = "dolorem"
    Set $List(lorem, *+1) = "ipsum"
    Set $List(lorem, *+1) = "quia"
    Set $List(lorem, *+1) = "dolor"
    Set $List(lorem, *+1) = "sit"
    Set $List(lorem, *+1) = "amet"
    Set $List(lorem, *+1) = "consectetur"
    Set $List(lorem, *+1) = "adipisci"
    Set $List(lorem, *+1) = "velit"
    Set $List(lorem, *+1) = "sed"
    Set $List(lorem, *+1) = "quia"
    Set $List(lorem, *+1) = "non"
    Set $List(lorem, *+1) = "numquam"
    Set $List(lorem, *+1) = "eius"
    Set $List(lorem, *+1) = "modi"
    Set $List(lorem, *+1) = "tempora"
    Set $List(lorem, *+1) = "incidunt"
    Set $List(lorem, *+1) = "ut"
    Set $List(lorem, *+1) = "labore"
    Set $List(lorem, *+1) = "et"
    Set $List(lorem, *+1) = "dolore"
    Set $List(lorem, *+1) = "magnam"
    Set $List(lorem, *+1) = "aliquam"
    Set $List(lorem, *+1) = "quaerat"
    Set $List(lorem, *+1) = "voluptatem"
    Set $List(lorem, *+1) = "ut"
    Set $List(lorem, *+1) = "enim"
    Set $List(lorem, *+1) = "ad"
    Set $List(lorem, *+1) = "minima"
    Set $List(lorem, *+1) = "veniam"
    Set $List(lorem, *+1) = "quis"
    Set $List(lorem, *+1) = "nostrum"
    Set $List(lorem, *+1) = "exercitationem"
    Set $List(lorem, *+1) = "ullam"
    Set $List(lorem, *+1) = "corporis"
    Set $List(lorem, *+1) = "nemo"
    Set $List(lorem, *+1) = "enim"
    Set $List(lorem, *+1) = "ipsam"
    Set $List(lorem, *+1) = "voluptatem"
    Set $List(lorem, *+1) = "quia"
    Set $List(lorem, *+1) = "voluptas"
    Set $List(lorem, *+1) = "sit"
    Set $List(lorem, *+1) = "suscipit"
    Set $List(lorem, *+1) = "laboriosam"
    Set $List(lorem, *+1) = "nisi"
    Set $List(lorem, *+1) = "ut"
    Set $List(lorem, *+1) = "aliquid"
    Set $List(lorem, *+1) = "ex"
    Set $List(lorem, *+1) = "ea"
    Set $List(lorem, *+1) = "commodi"
    Set $List(lorem, *+1) = "consequatur"
    Set $List(lorem, *+1) = "quis"
    Set $List(lorem, *+1) = "autem"
    Set $List(lorem, *+1) = "vel"
    Set $List(lorem, *+1) = "eum"
    Set $List(lorem, *+1) = "iure"
    Set $List(lorem, *+1) = "reprehenderit"
    Set $List(lorem, *+1) = "qui"
    Set $List(lorem, *+1) = "in"
    Set $List(lorem, *+1) = "ea"
    Set $List(lorem, *+1) = "voluptate"
    Set $List(lorem, *+1) = "velit"
    Set $List(lorem, *+1) = "esse"
    Set $List(lorem, *+1) = "quam"
    Set $List(lorem, *+1) = "nihil"
    Set $List(lorem, *+1) = "molestiae"
    Set $List(lorem, *+1) = "et"
    Set $List(lorem, *+1) = "iusto"
    Set $List(lorem, *+1) = "odio"
    Set $List(lorem, *+1) = "dignissimos"
    Set $List(lorem, *+1) = "ducimus"
    Set $List(lorem, *+1) = "qui"
    Set $List(lorem, *+1) = "blanditiis"
    Set $List(lorem, *+1) = "praesentium"
    Set $List(lorem, *+1) = "laudantium"
    Set $List(lorem, *+1) = "totam"
    Set $List(lorem, *+1) = "rem"
    Set $List(lorem, *+1) = "voluptatum"
    Set $List(lorem, *+1) = "deleniti"
    Set $List(lorem, *+1) = "atque"
    Set $List(lorem, *+1) = "corrupti"
    Set $List(lorem, *+1) = "quos"
    Set $List(lorem, *+1) = "dolores"
    Set $List(lorem, *+1) = "et"
    Set $List(lorem, *+1) = "quas"
    Set $List(lorem, *+1) = "molestias"
    Set $List(lorem, *+1) = "excepturi"
    Set $List(lorem, *+1) = "sint"
    Set $List(lorem, *+1) = "occaecati"
    Set $List(lorem, *+1) = "cupiditate"
    Set $List(lorem, *+1) = "non"
    Set $List(lorem, *+1) = "provident"
    Set $List(lorem, *+1) = "sed"
    Set $List(lorem, *+1) = "ut"
    Set $List(lorem, *+1) = "perspiciatis"
    Set $List(lorem, *+1) = "unde"
    Set $List(lorem, *+1) = "omnis"
    Set $List(lorem, *+1) = "iste"
    Set $List(lorem, *+1) = "natus"
    Set $List(lorem, *+1) = "error"
    Set $List(lorem, *+1) = "similique"
    Set $List(lorem, *+1) = "sunt"
    Set $List(lorem, *+1) = "in"
    Set $List(lorem, *+1) = "culpa"
    Set $List(lorem, *+1) = "qui"
    Set $List(lorem, *+1) = "officia"
    Set $List(lorem, *+1) = "deserunt"
    Set $List(lorem, *+1) = "mollitia"
    Set $List(lorem, *+1) = "animi"
    Set $List(lorem, *+1) = "id"
    Set $List(lorem, *+1) = "est"
    Set $List(lorem, *+1) = "laborum"
    Set $List(lorem, *+1) = "et"
    Set $List(lorem, *+1) = "dolorum"
    Set $List(lorem, *+1) = "fuga"
    Set $List(lorem, *+1) = "et"
    Set $List(lorem, *+1) = "harum"
    Set $List(lorem, *+1) = "quidem"
    Set $List(lorem, *+1) = "rerum"
    Set $List(lorem, *+1) = "facilis"
    Set $List(lorem, *+1) = "est"
    Set $List(lorem, *+1) = "et"
    Set $List(lorem, *+1) = "expedita"
    Set $List(lorem, *+1) = "distinctio"
    Set $List(lorem, *+1) = "nam"
    Set $List(lorem, *+1) = "libero"
    Set $List(lorem, *+1) = "tempore"
    Set $List(lorem, *+1) = "cum"
    Set $List(lorem, *+1) = "soluta"
    Set $List(lorem, *+1) = "nobis"
    Set $List(lorem, *+1) = "est"
    Set $List(lorem, *+1) = "eligendi"
    Set $List(lorem, *+1) = "optio"
    Set $List(lorem, *+1) = "cumque"
    Set $List(lorem, *+1) = "nihil"
    Set $List(lorem, *+1) = "impedit"
    Set $List(lorem, *+1) = "quo"
    Set $List(lorem, *+1) = "porro"
    Set $List(lorem, *+1) = "quisquam"
    Set $List(lorem, *+1) = "est"
    Set $List(lorem, *+1) = "qui"
    Set $List(lorem, *+1) = "minus"
    Set $List(lorem, *+1) = "id"
    Set $List(lorem, *+1) = "quod"
    Set $List(lorem, *+1) = "maxime"
    Set $List(lorem, *+1) = "placeat"
    Set $List(lorem, *+1) = "facere"
    Set $List(lorem, *+1) = "possimus"
    Set $List(lorem, *+1) = "omnis"
    Set $List(lorem, *+1) = "voluptas"
    Set $List(lorem, *+1) = "assumenda"
    Set $List(lorem, *+1) = "est"
    Set $List(lorem, *+1) = "omnis"
    Set $List(lorem, *+1) = "dolor"
    Set $List(lorem, *+1) = "repellendus"
    Set $List(lorem, *+1) = "temporibus"
    Set $List(lorem, *+1) = "autem"
    Set $List(lorem, *+1) = "quibusdam"
    Set $List(lorem, *+1) = "et"
    Set $List(lorem, *+1) = "aut"
    Set $List(lorem, *+1) = "consequatur"
    Set $List(lorem, *+1) = "vel"
    Set $List(lorem, *+1) = "illum"
    Set $List(lorem, *+1) = "qui"
    Set $List(lorem, *+1) = "dolorem"
    Set $List(lorem, *+1) = "eum"
    Set $List(lorem, *+1) = "fugiat"
    Set $List(lorem, *+1) = "quo"
    Set $List(lorem, *+1) = "voluptas"
    Set $List(lorem, *+1) = "nulla"
    Set $List(lorem, *+1) = "pariatur"
    Set $List(lorem, *+1) = "at"
    Set $List(lorem, *+1) = "vero"
    Set $List(lorem, *+1) = "eos"
    Set $List(lorem, *+1) = "et"
    Set $List(lorem, *+1) = "accusamus"
    Set $List(lorem, *+1) = "officiis"
    Set $List(lorem, *+1) = "debitis"
    Set $List(lorem, *+1) = "aut"
    Set $List(lorem, *+1) = "rerum"
    Set $List(lorem, *+1) = "necessitatibus"
    Set $List(lorem, *+1) = "saepe"
    Set $List(lorem, *+1) = "eveniet"
    Set $List(lorem, *+1) = "ut"
    Set $List(lorem, *+1) = "et"
    Set $List(lorem, *+1) = "voluptates"
    Set $List(lorem, *+1) = "repudiandae"
    Set $List(lorem, *+1) = "sint"
    Set $List(lorem, *+1) = "et"
    Set $List(lorem, *+1) = "molestiae"
    Set $List(lorem, *+1) = "non"
    Set $List(lorem, *+1) = "recusandae"
    Set $List(lorem, *+1) = "itaque"
    Set $List(lorem, *+1) = "earum"
    Set $List(lorem, *+1) = "rerum"
    Set $List(lorem, *+1) = "hic"
    Set $List(lorem, *+1) = "tenetur"
    Set $List(lorem, *+1) = "a"
    Set $List(lorem, *+1) = "sapiente"
    Set $List(lorem, *+1) = "delectus"
    Set $List(lorem, *+1) = "ut"
    Set $List(lorem, *+1) = "aut"
    Set $List(lorem, *+1) = "reiciendis"
    Set $List(lorem, *+1) = "voluptatibus"
    Set $List(lorem, *+1) = "maiores"
    Set $List(lorem, *+1) = "doloribus"
    Set $List(lorem, *+1) = "asperiores"
    Set $List(lorem, *+1) = "repellat"
    
    Set output = $ListGet(lorem,$Random($ListLength(lorem)) + 1)
	Kill lorem
	Quit output
}

ClassMethod Hipster(pParagraphCount As %Integer = "", pSeparator As %String = "") As %String
{
	Set:pParagraphCount="" pParagraphCount = 3
	Set:pSeparator="" pSeparator = $Char(10) _ $Char(13) ; \n \r OR LF CR
	
	Set $List(begin, *+1) = "Caros amigos, "
    Set $List(begin, *+1) = "Por outro lado, "
    Set $List(begin, *+1) = "Assim mesmo, "
    Set $List(begin, *+1) = "No entanto, n�o podemos esquecer que "
    Set $List(begin, *+1) = "Do mesmo modo, "
    Set $List(begin, *+1) = "A pr�tica cotidiana prova que "
    Set $List(begin, *+1) = "Nunca � demais lembrar o peso e o significado destes problemas, uma vez que "
    Set $List(begin, *+1) = "As experi�ncias acumuladas demonstram que "
    Set $List(begin, *+1) = "Acima de tudo, � fundamental ressaltar que "
    Set $List(begin, *+1) = "O incentivo ao avan�o tecnol�gico, assim como "
    Set $List(begin, *+1) = "N�o obstante, "
    Set $List(begin, *+1) = "Todas estas quest�es, devidamente ponderadas, levantam d�vidas sobre se "
    Set $List(begin, *+1) = "Pensando mais a longo prazo, "
    Set $List(begin, *+1) = "O que temos que ter sempre em mente � que "
    Set $List(begin, *+1) = "Ainda assim, existem d�vidas a respeito de como "
    Set $List(begin, *+1) = "Gostaria de enfatizar que "
    Set $List(begin, *+1) = "Todavia, "
    Set $List(begin, *+1) = "A n�vel organizacional, "
    Set $List(begin, *+1) = "O empenho em analisar "
    Set $List(begin, *+1) = "Percebemos, cada vez mais, que "
    Set $List(begin, *+1) = "No mundo atual, "
    Set $List(begin, *+1) = "� importante questionar o quanto "
    Set $List(begin, *+1) = "Neste sentido, "
    Set $List(begin, *+1) = "Evidentemente, "
    Set $List(begin, *+1) = "Por conseguinte, "
    Set $List(begin, *+1) = "� claro que "
    Set $List(begin, *+1) = "Podemos j� vislumbrar o modo pelo qual "
    Set $List(begin, *+1) = "Desta maneira, "
    Set $List(begin, *+1) = "O cuidado em identificar pontos cr�ticos n"
    Set $List(begin, *+1) = "A certifica��o de metodologias que nos auxiliam a lidar com "
    
    Set $List(middle, *+1) = "a execu��o dos pontos do programa "
    Set $List(middle, *+1) = "a complexidade dos estudos efetuados "
    Set $List(middle, *+1) = "a cont�nua expans�o de nossa atividade "
    Set $List(middle, *+1) = "a estrutura atual da organiza��o "
    Set $List(middle, *+1) = "o novo modelo estrutural aqui preconizado "
    Set $List(middle, *+1) = "o desenvolvimento cont�nuo de distintas formas de atua��o "
    Set $List(middle, *+1) = "a constante divulga��o das informa��es "
    Set $List(middle, *+1) = "a consolida��o das estruturas "
    Set $List(middle, *+1) = "a consulta aos diversos militantes "
    Set $List(middle, *+1) = "o in�cio da atividade geral de forma��o de atitudes "
    Set $List(middle, *+1) = "o desafiador cen�rio globalizado "
    Set $List(middle, *+1) = "a mobilidade dos capitais internacionais "
    Set $List(middle, *+1) = "o fen�meno da Internet "
    Set $List(middle, *+1) = "a hegemonia do ambiente pol�tico "
    Set $List(middle, *+1) = "a expans�o dos mercados mundiais "
    Set $List(middle, *+1) = "o aumento do di�logo entre os diferentes setores produtivos "
    Set $List(middle, *+1) = "a crescente influ�ncia da m�dia "
    Set $List(middle, *+1) = "a necessidade de renova��o processual "
    Set $List(middle, *+1) = "a competitividade nas transa��es comerciais "
    Set $List(middle, *+1) = "o surgimento do com�rcio virtual "
    Set $List(middle, *+1) = "a revolu��o dos costumes "
    Set $List(middle, *+1) = "o acompanhamento das prefer�ncias de consumo "
    Set $List(middle, *+1) = "o comprometimento entre as equipes "
    Set $List(middle, *+1) = "a determina��o clara de objetivos "
    Set $List(middle, *+1) = "a ado��o de pol�ticas descentralizadoras "
    Set $List(middle, *+1) = "a valoriza��o de fatores subjetivos "
    Set $List(middle, *+1) = "a percep��o das dificuldades "
    Set $List(middle, *+1) = "o entendimento das metas propostas "
    Set $List(middle, *+1) = "o consenso sobre a necessidade de qualifica��o "
    Set $List(middle, *+1) = "o julgamento imparcial das eventualidades "

    Set $List(middle2, *+1) = "nos obriga � an�lise "
    Set $List(middle2, *+1) = "cumpre um papel essencial na formula��o "
    Set $List(middle2, *+1) = "exige a precis�o e a defini��o "
    Set $List(middle2, *+1) = "auxilia a prepara��o e a composi��o "
    Set $List(middle2, *+1) = "garante a contribui��o de um grupo importante na determina��o "
    Set $List(middle2, *+1) = "assume importantes posi��es no estabelecimento "
    Set $List(middle2, *+1) = "facilita a cria��o "
    Set $List(middle2, *+1) = "obstaculiza a aprecia��o da import�ncia "
    Set $List(middle2, *+1) = "oferece uma interessante oportunidade para verifica��o "
    Set $List(middle2, *+1) = "acarreta um processo de reformula��o e moderniza��o "
    Set $List(middle2, *+1) = "pode nos levar a considerar a reestrutura��o "
    Set $List(middle2, *+1) = "representa uma abertura para a melhoria "
    Set $List(middle2, *+1) = "ainda n�o demonstrou convincentemente que vai participar na mudan�a "
    Set $List(middle2, *+1) = "talvez venha a ressaltar a relatividade "
    Set $List(middle2, *+1) = "prepara-nos para enfrentar situa��es at�picas decorrentes "
    Set $List(middle2, *+1) = "maximiza as possibilidades por conta "
    Set $List(middle2, *+1) = "desafia a capacidade de equaliza��o "
    Set $List(middle2, *+1) = "agrega valor ao estabelecimento "
    Set $List(middle2, *+1) = "� uma das consequ�ncias "
    Set $List(middle2, *+1) = "promove a alavancagem "
    Set $List(middle2, *+1) = "n�o pode mais se dissociar "
    Set $List(middle2, *+1) = "possibilita uma melhor vis�o global "
    Set $List(middle2, *+1) = "estimula a padroniza��o "
    Set $List(middle2, *+1) = "aponta para a melhoria "
    Set $List(middle2, *+1) = "faz parte de um processo de gerenciamento "
    Set $List(middle2, *+1) = "causa impacto indireto na reavalia��o "
    Set $List(middle2, *+1) = "apresenta tend�ncias no sentido de aprovar a manuten��o "
    Set $List(middle2, *+1) = "estende o alcance e a import�ncia "
    Set $List(middle2, *+1) = "deve passar por modifica��es independentemente "
    Set $List(middle2, *+1) = "afeta positivamente a correta previs�o "
    
    Set $List( TheEnd, *+1) = "das condi��es financeiras e administrativas exigidas."
    Set $List( TheEnd, *+1) = "das diretrizes de desenvolvimento para o futuro."
    Set $List( TheEnd, *+1) = "do sistema de participa��o geral."
    Set $List( TheEnd, *+1) = "das posturas dos �rg�os dirigentes com rela��o �s suas atribui��es."
    Set $List( TheEnd, *+1) = "das novas proposi��es."
    Set $List( TheEnd, *+1) = "das dire��es preferenciais no sentido do progresso."
    Set $List( TheEnd, *+1) = "do sistema de forma��o de quadros que corresponde �s necessidades."
    Set $List( TheEnd, *+1) = "das condi��es inegavelmente apropriadas."
    Set $List( TheEnd, *+1) = "dos �ndices pretendidos."
    Set $List( TheEnd, *+1) = "das formas de a��o."
    Set $List( TheEnd, *+1) = "dos paradigmas corporativos."
    Set $List( TheEnd, *+1) = "dos relacionamentos verticais entre as hierarquias."
    Set $List( TheEnd, *+1) = "do processo de comunica��o como um todo."
    Set $List( TheEnd, *+1) = "dos m�todos utilizados na avalia��o de resultados."
    Set $List( TheEnd, *+1) = "de todos os recursos funcionais envolvidos."
    Set $List( TheEnd, *+1) = "dos n�veis de motiva��o departamental."
    Set $List( TheEnd, *+1) = "da gest�o inovadora da qual fazemos parte."
    Set $List( TheEnd, *+1) = "dos modos de opera��o convencionais."
    Set $List( TheEnd, *+1) = "de alternativas �s solu��es ortodoxas."
    Set $List( TheEnd, *+1) = "dos procedimentos normalmente adotados."
    Set $List( TheEnd, *+1) = "dos conhecimentos estrat�gicos para atingir a excel�ncia."
    Set $List( TheEnd, *+1) = "do fluxo de informa��es."
    Set $List( TheEnd, *+1) = "do levantamento das vari�veis envolvidas."
    Set $List( TheEnd, *+1) = "das diversas correntes de pensamento."
    Set $List( TheEnd, *+1) = "do impacto na agilidade decis�ria."
    Set $List( TheEnd, *+1) = "das regras de conduta normativas."
    Set $List( TheEnd, *+1) = "do or�amento setorial."
    Set $List( TheEnd, *+1) = "do retorno esperado a longo prazo."
    Set $List( TheEnd, *+1) = "do investimento em reciclagem t�cnica."
    Set $List( TheEnd, *+1) = "do remanejamento dos quadros funcionais."
    
	For k=1:1:pParagraphCount {
		S paragraph = $ListGet(begin,$Random($ListLength(begin)) + 1)
		S paragraph = paragraph _ $ListGet(middle,$Random($ListLength(middle)) + 1)
		S paragraph = paragraph _ $ListGet(middle2,$Random($ListLength(middle2)) + 1)
		S paragraph = paragraph _ $ListGet(TheEnd,$Random($ListLength(TheEnd)) + 1)
		Set $List(paragraphs,*+1) = paragraph
	}
	
	K begin, TheEnd, middle, middle2
	Quit $ListToString($Get(paragraphs), pSeparator)
}

}
