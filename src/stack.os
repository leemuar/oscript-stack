
Var mStackContainer;

Function count() Export
	return mStackContainer.count();
EndFunction

Function push(value) Export
	mStackContainer.add(value);
EndFunction

Function pop() Export
	Var topValue;

	// TODO generate exception explicitly on stack underflow, do not rely on get() behavior of empty Array
	topValue = mStackContainer.get(mStackContainer.UBound());
	mStackContainer.delete(mStackContainer.UBound());

	return topValue;
EndFunction

Procedure Init()
	mStackContainer = New Array;
EndProcedure


Init();