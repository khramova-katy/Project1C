﻿
Процедура ОбработкаПроведения(Отказ, Режим)
	
	// регистр ЧекККМ 
	Движения.ЧекККМ.Записывать = Истина;
	Для Каждого ТекСтрокаНоменклатура Из Номенклатура Цикл
		Движение = Движения.ЧекККМ.Добавить();
		Движение.Период = Дата;
		Движение.Контрагент = Контрагент;
		Движение.СуммаЧека = СуммаЧека;
		Движение.НоменклатураСумма = ТекСтрокаНоменклатура.Сумма;
		Движение.Номенклатура = ТекСтрокаНоменклатура.Номенклатура;
		Движение.НоменклатураКоличество = ТекСтрокаНоменклатура.Количество;
	КонецЦикла;
	
	Для Каждого ТекСтрокаСертификаты Из Сертификаты Цикл
		Движение = Движения.ЧекККМ.Добавить();
		Движение.Период = Дата;
		Движение.Контрагент = Контрагент;
		Движение.СуммаЧека = СуммаЧека;
		Движение.Сертификат = ТекСтрокаСертификаты.Сертификат;
		Движение.СертификатКоличество = ТекСтрокаСертификаты.Количество;
		Движение.СертификатСтатус = ТекСтрокаСертификаты.Статус;
	КонецЦикла;

КонецПроцедуры
