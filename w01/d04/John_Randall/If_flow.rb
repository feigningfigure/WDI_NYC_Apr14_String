


############the first statement is true


if (this statement evaluates as true)
	do all of this stuff
elsif (this statment is NOT EVEN EVALUATED)
	do not do this stuff
else  #NO CONDITION APPEARS HERE
	do not do this stuff
end

resume here and do this stuff





############the first statement is false, the second statement is true


if (this statement evaluates as false)
	do not do all of this stuff
elsif (this statment here IS NOW EVALUATED, evaluates as true)
	do this stuff
else  #NO CONDITION APPEARS HERE
	do not do this stuff
end

resume here and do this stuff






############the first statement is false, the second statement is false (catchall)


if (this statement evaluates as false)
	do not do all of this stuff
elsif (this statment evaluates as false)
	do not do this stuff
else  #NO CONDITION APPEARS HERE
	do this stuff
end

resume here and do this stuff








############the first statement is true


if (this statement evaluates as true)
	do all of this stuff
	RETURN or BREAK
	
	.... exit the method
	....nothing else in this entire method matters, we have escaped out of it.
