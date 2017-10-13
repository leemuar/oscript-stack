// Array, container of stack values
Перем mStackContainer;


// Adds a value to the top of stack
//
// Parameters:
//  Value  - Any - A value to add to stack
//
// Returns:
//   Stack   - returns itself (stack object) to be used in fluent calls
//
Function push(Value) Export
	mStackContainer.Add(Value);
	return ThisObject;
EndFunction


// Removes top element out of stack and returns it
//
// Throws exception on stack underflow
//
// Returns:
//   Any   - Value from the top of the stack
//
Function pop() Export
	// we don't check for underflow here to save instructions because
	// peek throws exception on underflow
	value = peek();
	mStackContainer.delete(mStackContainer.UBound());
	return value;
EndFunction


// Reads a value from the top and returns it
// Does not remove top element
//
// Trows exception on stack underflow
//
// Returns:
//   Any   - Value from the top of the stack
//
Function peek() Export
	If Not empty() Then
		return mStackContainer.get(mStackContainer.UBound());
	Else
		ThrowException "Stack underflow. Attempt to get a value out of empty stack";
	EndIf;
EndFunction


// Checks if stack has no elements
//
// Returns:
//   Boolean   - Is stack empty. True is stack has no elements, false otherwise
//
Function empty() Export
	return 0 = count();
EndFunction


// Returns amount of elements in stack
//
//
// Returns:
//   Number   - amount of elements in stack
//
Function count() Export 
	return count();
EndFunction


// Alias of count(). Returns amount of elements in stack 
//
//
// Returns:
//   Number   - Amount of elements in stack
//
Function size() Export
	return count();
EndFunction


// Initializes this object
Procedure init()
	mStackContainer = new Array();
EndProcedure


init();