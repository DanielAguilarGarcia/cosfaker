Class cosFaker.Internet Extends cosFaker.lib.core
{

ClassMethod UserName(pFirstName As %String = "", pLastName As %String = "") As %String
{
	Set rand = $Random(3)
	Set separator(0) = ".", separator(1) = "_"
	Set:pFirstName="" pFirstName = ##class(cosFaker.Name).FirstName()
	Set:pLastName="" pLastName = ##class(cosFaker.Name).LastName()
	
	If rand = 0 {
		Set username = pFirstName _ $Random(99)
	} ElseIf rand = 1 {
		Set username = pFirstName _ $Get(separator($Random(3))) _ pLastName
	} Else {
		Set username = pFirstName _ $Get(separator($Random(3))) _ pLastName _ $Random(99)
	}
	
	Quit ..Clean(username)
}

ClassMethod Email(pFirstName As %String = "", pLastName As %String = "", pProvider As %String = "") As %String
{
	Set:pProvider="" pProvider = ..SampleFromFile("email_provider")
	Quit ..UserName(pFirstName, pLastName) _ "@" _ pProvider
}

ClassMethod Protocol() As %String
{
	Set protocols(0) = "http"
	Set protocols(1) = "https"
	Quit $Get(protocols($Random(2)))
}

ClassMethod DomainWord() As %String
{
	Set output = ##class(cosFaker.Name).FirstName()
	Set m=##class(%Regex.Matcher).%New("([\\~#&*{}/:<>?|\""'])")
    Set m.Text = output
    While m.Locate() {
	    Set output = $Replace(output, m.Group, "")
    }
	Quit ..Clean(output)
}

ClassMethod DomainName() As %String
{
	Quit $ZConvert(..DomainWord(),"l") _ "." _ ..SampleFromFile("domain_suffix")
}

ClassMethod Url() As %String
{
	Set www(0) = "www."
	Quit ..Protocol() _ "://" _ $Get(www($Random(2))) _ ..DomainName()
}

ClassMethod Clean(pName As %String) As %String [ Private ]
{
	Quit $ZConvert($Translate(pName,"�����","uoeia"),"l")
}

ClassMethod Avatar(pSize As %Integer = "") As %String
{
	Set:pSize="" pSize = 150
	Quit "http://www.avatarpro.biz/avatar?s="_pSize
}

ClassMethod Slug(pWords As %String = "", pGlue As %String = "") As %String
{
	Set:pGlue="" pGlue = $List($ListBuild("-","_","."),($Random(3)+1))
	Set:pWords="" pWords = ##class(cosFaker.Lorem).Words()
	Set pWords = $Replace(pWords," ",pGlue)
	Quit pWords
}

ClassMethod IPV4() As %String
{
	Quit ..MaskNumber("#.#.#.#",1,254)
}

ClassMethod IPV6() As %String
{
	Quit ..Times(32,"cosFaker.lib.core","Hexadecimal",4,":")
}

ClassMethod MAC() As %String
{
	Quit $ZConvert(..Times(12,"cosFaker.lib.core","Hexadecimal",2,":"),"U")
}

}

