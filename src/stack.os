
Var mStackContainer;

Function count() Export
	return mStackContainer.count();
EndFunction

Function push(value) Export
	mStackContainer.add(value);
EndFunction

Function pop() Export
	Var topValue;

	If this().empty() Then
		Raise "stack underflow: attempt to get element out of empty stack object";
	EndIf;

	topValue = this().peek();
	mStackContainer.delete(mStackContainer.UBound());

	return topValue;
EndFunction

Function peek() Export
	If this().empty() Then
		Raise "stack underflow: attempt to get element out of empty stack object";
	Endif;

	return mStackContainer.get(mstackContainer.UBound());
EndFunction

Function empty() Export
	Return 0 = this().count();
EndFunction

Function this()
	// early versions of intepreter didn't have ThisObject variable,
	// only it's russian synonym - ЭтотОбъект
	return ЭтотОбъект;
EndFunction

Procedure init()
	mStackContainer = New Array;
EndProcedure


init();