
Var mStackContainer;

Function count() Export
	return mStackContainer.count();
EndFunction

Function push(value) Export
	mStackContainer.add(value);
EndFunction

Procedure pop() Export
	mStackContainer.delete(mStackContainer.UBound());
EndProcedure

Procedure Init()
	mStackContainer = New Array;
EndProcedure


Init();