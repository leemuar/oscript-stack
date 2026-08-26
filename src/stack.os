
Var mStackContainer;

// Возвращает количество элементов, находящихся в стеке.
//
// Возвращаемое значение:
//  Число - количество элементов в стеке.
//
Function count() Export
	return mStackContainer.count();
EndFunction

// Добавляет элемент на вершину стека.
//
// Параметры:
//  value - Произвольный - значение, добавляемое на вершину стека.
//
Function push(value) Export
	mStackContainer.add(value);
EndFunction

// Извлекает элемент с вершины стека и удаляет его из стека.
// Если стек пуст, вызывает исключение с текстом "stack underflow".
//
// Возвращаемое значение:
//  Произвольный - значение, находившееся на вершине стека.
//
Function pop() Export
	Var topValue;

	// we want to check for underflow and throw exception here
	// peek() does this so we utilize it to reuse code
	topValue = this().peek();
	mStackContainer.delete(mStackContainer.UBound());

	return topValue;
EndFunction

// Возвращает элемент с вершины стека, не удаляя его из стека.
// Если стек пуст, вызывает исключение с текстом "stack underflow".
//
// Возвращаемое значение:
//  Произвольный - значение, находящееся на вершине стека.
//
Function peek() Export
	If this().empty() Then
		Raise "stack underflow: attempt to get element out of empty stack object";
	Endif;

	return mStackContainer.get(mStackContainer.UBound());
EndFunction

// Проверяет, пуст ли стек.
//
// Возвращаемое значение:
//  Булево - Истина, если стек не содержит элементов; иначе Ложь.
//
Function empty() Export
	Return 0 = this().count();
EndFunction

// Проверяет наличие указанного значения среди элементов стека.
//
// Параметры:
//  value - Произвольный - значение, наличие которого проверяется.
//
// Возвращаемое значение:
//  Булево - Истина, если значение содержится в стеке; иначе Ложь.
//
Function contains(value) Export
	Return mStackContainer.Find(value) <> Undefined;
EndFunction

// Удаляет все элементы из стека.
//
Procedure clear() Export
	mStackContainer.Clear();
EndProcedure

Function this()
	// early versions of intepreter didn't have ThisObject variable,
	// only it's russian synonym - ЭтотОбъект
	return ЭтотОбъект;
EndFunction

Procedure init()
	mStackContainer = New Array;
EndProcedure


init();