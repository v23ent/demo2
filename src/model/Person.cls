Class model.Person Extends %Persistent
{

/// Имя
Property name As %String;

ClassMethod try() As %Status
{
    set a = "!"
    write "Hello world" _ a
}

Storage Default
{
<Data name="PersonDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
</Data>
<DataLocation>^model.PersonD</DataLocation>
<DefaultData>PersonDefaultData</DefaultData>
<IdLocation>^model.PersonD</IdLocation>
<IndexLocation>^model.PersonI</IndexLocation>
<StreamLocation>^model.PersonS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
