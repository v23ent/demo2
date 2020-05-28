Class model.Street Extends %Persistent
{

Property name As %String;

Storage Default
{
<Data name="StreetDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
</Data>
<DataLocation>^model.StreetD</DataLocation>
<DefaultData>StreetDefaultData</DefaultData>
<IdLocation>^model.StreetD</IdLocation>
<IndexLocation>^model.StreetI</IndexLocation>
<StreamLocation>^model.StreetS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
