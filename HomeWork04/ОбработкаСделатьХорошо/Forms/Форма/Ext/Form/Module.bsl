﻿&НаКлиенте
Процедура СделатьХорошо(Команда)
	
	ЭтаФорма.ВключенРежимХорошо = НЕ ЭтаФорма.ВключенРежимХорошо;
	
	Если ЭтаФорма.ВключенРежимХорошо Тогда
		
		ПодключитьОбработчикОжидания("ИзменитьЦветФонаКнопки", 1, Ложь);
		
	Иначе
		
		ОтключитьОбработчикОжидания("ИзменитьЦветФонаКнопки");
		Элементы.СделатьХорошо.ЦветФона = ПолучитьЦветФонаКнопкиПоУмолчанию();
		
	КонецЕсли;

КонецПроцедуры

&НаСервере
Функция ПолучитьЦветФонаКнопкиПоУмолчанию()
	
	Возврат ЦветаСтиля.ЦветФонаКнопки;
	
КонецФункции

&НаКлиенте
Функция ИзменитьЦветФонаКнопки() Экспорт
	
	ЭтаФорма.Счетчик = ЭтаФорма.Счетчик + 1;
	
	Если ЭтаФорма.Счетчик%4 = 1 Тогда
		Элементы.СделатьХорошо.ЦветФона = WebЦвета.СветлоКоралловый;
	ИначеЕсли ЭтаФорма.Счетчик%4 = 2 Тогда
		Элементы.СделатьХорошо.ЦветФона = WebЦвета.Голубой;
	ИначеЕсли ЭтаФорма.Счетчик%4 = 3 Тогда
		Элементы.СделатьХорошо.ЦветФона = WebЦвета.СветлоЗеленый;
	ИначеЕсли ЭтаФорма.Счетчик%4 = 0 Тогда
		Элементы.СделатьХорошо.ЦветФона = WebЦвета.Желтый;
	КонецЕсли;
	
КонецФункции