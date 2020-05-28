Class Test.Test Extends %RegisteredObject
{

ClassMethod TestSwitchNS(pA = 0)
{
	
	try {
		TSTART
		
		if (pA) {
			set st = ..Switcher()
			TCOMMIT
			q
		}
		
		w $namespace,!
		TCOMMIT
		
	} catch ex {
		TROLLBACK
		write "rolling back...",!
	}
	q
}

ClassMethod Switcher() As %Status
{
	write "entering switcher ...",!
	s st = $$$OK
    try {
    	write "0. ns = "_$namespace,!
    
		new $namespace
	    set namespace = $namespace
	    set $namespace = "%SYS"
	    try {
	        set ^abc = $ZDT
	 //        throw ##class(%Exception.AbstractException).%New()
	        
	    } catch e {
	        set $namespace = namespace
	        throw e   
	    }
	    set $namespace = namespace
	    
	    write "2. ns = "_$namespace,!
    } catch (ex) {
        s st = ex.AsStatus()
    }
    q st
}

}
