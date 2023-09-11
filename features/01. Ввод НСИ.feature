﻿#language: ru

@tree

Функционал: 01. Ввод НСИ

Как Администратор я хочу
проверить, что НСИ вводится корректно
чтобы не было ошибок при вводе!

Контекст:
И я закрываю все окна клиентского приложения

Сценарий: Создание Владельца карты

И Я создам владельца карты с параметрами "Пупкин","Семен", "Аркадьевич", "01.01.1986 00:00:00", "Пупкин Семен Аркадьевич"

//И Я создам владельца карты с параметрами "Игнатьев","Артур", "Артурович", "01.01.1970 00:00:00", "Игнатьев Артур Артурович"

Сценарий: Создание Единицы измерения

* Удаление элемента
	Когда В панели разделов я выбираю 'НСИ'
	И В командном интерфейсе я выбираю 'НСИ' 'Единицы измерения'
	И В панели функций я выбираю 'Единицы измерения'
	Тогда открылось окно 'Единицы измерения'
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылось окно 'Найти'
	И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Наименование'
	И я меняю значение переключателя с именем 'CompareType' на 'По части строки'
	И в поле с именем 'Pattern' я ввожу текст 'мл.'
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно 'Единицы измерения'
	И пока в таблице "Список" количество строк ">" 0 Тогда
		И в таблице 'Список' я удаляю строку
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'

* Создание элемента
	Когда В панели разделов я выбираю 'НСИ'
	И В командном интерфейсе я выбираю 'НСИ' 'Единицы измерения'
	Тогда открылось окно 'Единицы измерения'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Единицы измерения (создание)'
	И в поле с именем 'Наименование' я ввожу текст 'мл.'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Единицы измерения (создание) *' в течение 05 секунд
	
* Проверка заполнения
	Когда В панели разделов я выбираю 'НСИ'
	И В командном интерфейсе я выбираю 'НСИ' 'Единицы измерения'
	Тогда открылось окно 'Единицы измерения'
	И я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылось окно 'Найти'
	И я меняю значение переключателя с именем 'CompareType' на 'По части строки'
	И в поле с именем 'Pattern' я ввожу текст 'мл.'
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно 'Единицы измерения'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'мл. (Единицы измерения)'
	И Я закрываю окно 'мл. (Единицы измерения)'

Сценарий: Создание Номенклатуры

* Удаление элемента
	Когда В панели разделов я выбираю 'НСИ'
	И В командном интерфейсе я выбираю 'НСИ' 'Номенклатура'
	Тогда открылось окно 'Номенклатура'
	И я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылось окно 'Найти'
	И я меняю значение переключателя с именем 'CompareType' на 'По части строки'
	И в поле с именем 'Pattern' я ввожу текст 'Прием врача'
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно 'Номенклатура'
	И пока в таблице "Список" количество строк ">" 0 Тогда
        И в таблице 'Список' я удаляю строку
        Тогда открылось окно '1С:Предприятие'
        И я нажимаю на кнопку с именем 'Button0'
	
	* Создание элемента		
		И В панели функций я выбираю 'Номенклатура'
		И В панели разделов я выбираю 'НСИ'
		И В командном интерфейсе я выбираю 'НСИ' 'Номенклатура'
		Тогда открылось окно 'Номенклатура'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Номенклатура (создание)'
		И в поле с именем 'Наименование' я ввожу текст 'Прием врача'
		И я перехожу к следующему реквизиту
		И из выпадающего списка с именем "ВидНоменклаутры" я выбираю точное значение 'Услуга'
		И я перехожу к следующему реквизиту
		И из выпадающего списка с именем "НДС" я выбираю точное значение '10%'
		И я перехожу к следующему реквизиту
		И я нажимаю кнопку выбора у поля с именем "ЕдиницаИзмерения"
		Тогда открылось окно 'Единицы измерения'
		И я нажимаю на кнопку с именем 'ФормаНайти'
		Тогда открылось окно 'Найти'
		И в поле с именем 'Pattern' я ввожу текст ''
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Наименование'
		И в поле с именем 'Pattern' я ввожу текст 'мл.'
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту
		И я нажимаю на кнопку с именем 'Find'
		Тогда открылось окно 'Единицы измерения'
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		Тогда открылось окно 'Номенклатура (создание) *'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Номенклатура (создание) *' в течение 05 секунд
		
* Проверка заполнения
	Когда открылось окно 'Номенклатура'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Прием врача (Номенклатура)'
	И Я закрываю окно 'Прием врача (Номенклатура)'
	
Сценарий: Создание Информационной карты

* Удаление элемента
	И В командном интерфейсе я выбираю 'НСИ' 'Информационные карты'
	Тогда открылось окно 'Информационные карты'
	И я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылось окно 'Найти'
	И я меняю значение переключателя с именем 'CompareType' на 'По части строки'
	И в поле с именем 'Pattern' я ввожу текст 'Пупкин С А'
	И я нажимаю на кнопку с именем 'Find'

* Создание элемента
	Когда В панели разделов я выбираю 'НСИ'
	И В командном интерфейсе я выбираю 'НСИ' 'Информационные карты'
	Тогда открылось окно 'Информационные карты'
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Информационные карты (создание)'
	И я нажимаю кнопку выбора у поля с именем "ВладелецКарты"
	Тогда открылось окно 'Владелец карты'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Информационные карты (создание) *'
	И из выпадающего списка с именем "ВидДисконтнойКарты" я выбираю точное значение 'Сертификат'
	И в поле с именем 'КоличествоЧеков' я ввожу текст '1'
	И я устанавливаю флаг с именем 'Бонусная'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Информационные карты (создание) *' в течение 05 секунд
			
* Проверка заполнения
	Когда открылось окно 'Информационные карты'
	И я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылось окно 'Найти'
	И я меняю значение переключателя с именем 'CompareType' на 'По части строки'
	И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Наименование'
	И в поле с именем 'Pattern' я ввожу текст 'Пупкин С А'
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно 'Информационные карты'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Пупкин С А (Информационные карты)'
	И Я закрываю окно 'Пупкин С А (Информационные карты)'
	