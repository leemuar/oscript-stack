#Использовать asserts

Функция ПолучитьСписокТестов(ТестПриложение) Экспорт
	Тесты = Новый Массив();

	Тесты.Добавить("ДолженСоздаватьсяОбъектСтека");

	Тесты.Добавить("ДолженИметьМетодCount");
	Тесты.Добавить("ПроверитьНовыйОбъектНеИмеетЭлементов");

	Тесты.Добавить("ДолженИметьМетодPush");
	Тесты.Добавить("ДолженДобавитьОдинЭлемент");
	Тесты.Добавить("ДобавлениеОдногоЭлементаУвеличиваетКоличествоНа1");
	Тесты.Добавить("ДобавлениеНесколькихЭлементовУвеличиваетКоличествоНаЧислоДобавленныхЭлементов");

	Тесты.Добавить("ДолженИметьМетодPop");
	Тесты.Добавить("ВызовPopДолженУменьшатьКоличествоЭлементов");
	Тесты.Добавить("ВызовPopДолженВозвращатьПоследнийДобавленныйЭлемент");
	Тесты.Добавить("ВызовМетодаPopУПустогоСтекаДолженГенерироватьИсключение");
	Тесты.Добавить("ВызовМетодаPopУПустогоСтекаДолженГенерироватьИсключениеСОпределеннымТекстом");

	Тесты.Добавить("ДолженИметьМетодPeek");
	Тесты.Добавить("ВызовМетодаPeekВозвращаетПоследнийДобавленныйЭлемент");
	Тесты.Добавить("ВызовМетодаPeekНеУменьшаетКоличествоЭлементов");
	Тесты.Добавить("ВызовМетодаPeekУПустогоОбъектаБросаетИсключение");
	Тесты.Добавить("ВызовМетодаPeekУПустогоОбъектаБросаетИсключениеСОпределеннымТекстом");
	Тесты.Добавить("ВызовМетодаPeekВозвращаетТотЖеСамыйОбъект");
	
	Возврат Тесты;
КонецФункции


Функция ДолженСоздаватьсяОбъектСтека() Экспорт

	Стек = Новый Стек;

	// очистим память
	ОсвободитьОбъект(Стек);
	
КонецФункции

Функция ДолженИметьМетодCount() Экспорт
	Перем Стек, Рефлектор;

	Стек = Новый Стек;
	Рефлектор = Новый Рефлектор;
	Ожидаем
		.Что(Рефлектор.МетодСуществует(Стек, "count"))
		.ЭтоИстина()
		;

	ОсвободитьОбъект(Стек);
	ОсвободитьОбъект(Рефлектор);
КонецФункции

Функция ПроверитьНовыйОбъектНеИмеетЭлементов() Экспорт
	Перем Стек;

	Стек = Новый Стек;
	Ожидаем
		.Что(Стек.count())
		.Равно(0)
		;

	ОсвободитьОбъект(Стек);
КонецФункции

Функция ДолженИметьМетодPush() Экспорт
	Перем Стек, Рефлектор;

	Рефлектор = Новый Рефлектор;
	Стек = Новый Стек;
	Ожидаем
		.Что(Рефлектор.МетодСуществует(Стек, "push"), "Метод не найден: push()")
		.ЭтоИстина()
		;

	ОсвободитьОбъект(Стек);
	ОсвободитьОбъект(Рефлектор);
КонецФункции

Функция ДолженДобавитьОдинЭлемент() Экспорт
	Перем Стек;

	Стек = Новый Стек;
	Стек.push(1);

	ОсвободитьОбъект(Стек);
КонецФункции

Функция ДобавлениеОдногоЭлементаУвеличиваетКоличествоНа1() Экспорт
	Перем Стек;

	Стек = Новый Стек;
	Стек.push(1);
	Ожидаем
		.Что(Стек.count(), "После добавления одного элемента в стек должно увеличиться количество элементов в нем")
		.Равно(1)
		;

	ОсвободитьОбъект(Стек);
КонецФункции

Функция ДобавлениеНесколькихЭлементовУвеличиваетКоличествоНаЧислоДобавленныхЭлементов() Экспорт
	Перем Стек, ЧислоЭлементов;

	ЧислоЭлементов = 17;
	Стек = Новый Стек;
	Для Сч = 1 По ЧислоЭлементов Цикл
		Стек.push(1);
	КонецЦикла;
	Ожидаем
		.Что(Стек.count())
		.Равно(ЧислоЭлементов)
		;

	ОсвободитьОбъект(Стек);
КонецФункции

Функция ДолженИметьМетодPop() Экспорт
	Перем Стек, Рефлектор;

	Рефлектор = Новый Рефлектор;
	Стек = Новый Стек;
	Ожидаем
		.Что(Рефлектор.МетодСуществует(Стек, "pop"))
		.ЭтоИстина()
		;

	ОсвободитьОбъект(Стек);
	ОсвободитьОбъект(Рефлектор);
КонецФункции

Функция ВызовPopДолженУменьшатьКоличествоЭлементов() Экспорт
	Перем Стек;

	Стек = Новый Стек;
	Стек.push(1);
	Стек.pop();
	Ожидаем
		.Что(Стек.count(), "pop() уменьшает количество элементов")
		.Равно(0)
		;
	
	Стек = Новый Стек;
	Стек.push(1);
	Стек.push(1);
	Стек.push(1);
	Стек.push(1);
	Стек.pop();
	Стек.pop();
	Ожидаем
		.Что(Стек.count(), "pop() уменьшает количество элементов")
		.Равно(2)
		;

	ОсвободитьОбъект(Стек);
КонецФункции

Функция ВызовPopДолженВозвращатьПоследнийДобавленныйЭлемент() Экспорт
	Перем Стек;

	Стек = Новый Стек;

	Стек.push(1);
	Ожидаем
		.Что(Стек.pop())
		.Равно(1)
		;

	Стек = Новый Стек;
	Стек.push(0);
	Стек.push(1);
	Стек.push(35);
	Ожидаем
		.Что(Стек.pop())
		.Равно(35)
		;
	Ожидаем
		.Что(Стек.pop())
		.Равно(1)
		;
	Ожидаем
		.Что(Стек.pop())
		.Равно(0)
		;

	ОсвободитьОбъект(Стек);
КонецФункции

Функция ВызовМетодаPopУПустогоСтекаДолженГенерироватьИсключение() Экспорт
	Перем Стек;

	Стек = Новый Стек;
	Ожидаем
		.Что(Стек)
		.Метод("pop")
		.ВыбрасываетИсключение()
		;

	ОсвободитьОбъект(Стек);
КонецФункции

Функция ДолженИметьМетодPeek() Экспорт
	Перем Стек, Рефлектор;

	Стек = Новый Стек;
	Рефлектор = Новый Рефлектор;
	Ожидаем
		.Что(Рефлектор.МетодСуществует(Стек, "peek"), "должен существовать метод peek()")
		.ЭтоИстина()
		;

	ОсвободитьОбъект(Стек);
	ОсвободитьОбъект(Рефлектор);
КонецФункции

Процедура ВызовМетодаPeekВозвращаетПоследнийДобавленныйЭлемент() Экспорт
	Перем Стек;

	Стек = Новый Стек;
	Стек.push(1);
	Стек.push(2);
	Стек.push(3);

	Ожидаем
		.Что(Стек.peek())
		.Равно(3)
		;
		
	ОсвободитьОбъект(Стек);
КонецПроцедуры

Функция ВызовМетодаPeekНеУменьшаетКоличествоЭлементов() Экспорт
	Стек = Новый Стек;

	Стек.push(1);
	Стек.peek();
	Ожидаем
		.Что(Стек.count())
		.Равно(1)
		;
	
	Стек.peek();
	Стек.peek();
	Стек.peek();
	Стек.peek();
	Стек.peek();
	Ожидаем
	.Что(Стек.count())
	.Равно(1)
	;

	ОсвободитьОбъект(Стек);
КонецФункции

Процедура ВызовМетодаPeekУПустогоОбъектаБросаетИсключение() Экспорт
	Перем Стек;

	Стек = Новый Стек;
	Ожидаем
		.Что(Стек, "Получение верхнего элемента пустого стека должно вызывать исключение")
		.Метод("peek")
		.ВыбрасываетИсключение()
		;

	ОсвободитьОбъект(Стек);
КонецПроцедуры

Процедура ВызовМетодаPopУПустогоСтекаДолженГенерироватьИсключениеСОпределеннымТекстом() Экспорт
	Перем Стек;

	// проверим вызов метода у пустого объекта
	Стек = Новый Стек;
	Ожидаем
		.Что(Стек)
		.Метод("pop")
		.ВыбрасываетИсключение("stack underflow")
		;

	ОсвободитьОбъект(Стек);
КонецПроцедуры

Функция ВызовМетодаPeekУПустогоОбъектаБросаетИсключениеСОпределеннымТекстом() Экспорт
	Перем Стек;

	// проверим вызов метода у пустого стека
	Стек = Новый Стек;
	Ожидаем
		.Что(Стек, "Вызов метода peek() у пустого стека должен бросить исключение с определенным текстом")
		.Метод("peek")
		.ВыбрасываетИсключение("stack underflow")
		;
	ОсвободитьОбъект(Стек);

	// проверим вызов метода у стека, уже содержащего элементы (не пустого)
	Стек = Новый Стек;
	Стек.push(1);
	Ожидаем
		.Что(Стек, "Вызов метода peek() у стека, имеющего элементы, не выбрасывает исключение с определенным текстом")
		.Не_()
		.ВыбрасываетИсключение("stack underflow")
		;
	ОсвободитьОбъект(Стек);
КонецФункции

Функция ВызовМетодаPeekВозвращаетТотЖеСамыйОбъект() Экспорт
	Перем Стек, Стек2;

	// нужно убедиться, что для сложных типов метод возвращает
	// тот же самый объект, а не его копию
	Стек = Новый Стек;
	Стек2 = Новый Стек;
	Ожидаем
		.Что(Стек)
		.Не_()
		.Равно(Стек2)
		;

	Стек.push(Стек2);
	Ожидаем
		.Что(Стек.peek())
		.Равно(Стек.peek())
		;

	ОсвободитьОбъект(Стек);
	ОсвободитьОбъект(Стек2);
КонецФункции

Процедура Инициализация()
	ПодключитьСценарий(ОбъединитьПути(ТекущийСценарий().Каталог, "..", "src", "stack.os"), "Стек");
КонецПроцедуры



Инициализация();