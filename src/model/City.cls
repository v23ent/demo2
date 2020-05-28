Class model.City Extends %Persistent
{

Property name As %String;

Property regionName As %String;

ClassMethod sayHi() As %Status
{
    set st = $$$OK
    do ##class(model.Person).try()
    return st
}

Storage Default
{
<Data name="CityDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
<Value name="3">
<Value>regionName</Value>
</Value>
</Data>
<DataLocation>^model.CityD</DataLocation>
<DefaultData>CityDefaultData</DefaultData>
<IdLocation>^model.CityD</IdLocation>
<IndexLocation>^model.CityI</IndexLocation>
<StreamLocation>^model.CityS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
