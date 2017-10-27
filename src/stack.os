
Var mStackContainer;

Function count() Export
	return mStackContainer.count();
EndFunction

Function push(value) Export
	mStackContainer.add(value);
EndFunction

Function pop() Export
	Var topValue;

	If 0 = mStackContainer.count() Then
		Raise "stack underflow: attempt to get element out of empty stack object";
	EndIf;

	topValue = mStackContainer.get(mStackContainer.UBound());
	mStackContainer.delete(mStackContainer.UBound());

	return topValue;
EndFunction

Function peek() Export
	return mStackContainer.get(mstackContainer.UBound());
EndFunction

Procedure Init()
	mStackContainer = New Array;
EndProcedure


Init();