﻿#encoding: utf-8
#language: ru

Функционал: Сбор требований в BDDEditor                                                                                                                   
    Как Системный аналитик                                                                                                                                
    Я хочу удобный инструмент для быстрого создания фича-файлов                                                                                           
    Чтобы быстро создавать фича-файлы по указанному шаблону                                                                                               
    
Контекст: 
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И В панели разделов я выбираю "Обработки"
    И Я нажимаю кнопку командного интерфейса "BDDEditor"
    И открылось окно "Обработка требований: BDDEditor [ver. 0.9.152]"
    И в поле "СтруктураДляЗагрузки" указан временный каталог 1С через метод ПолучитьИмяВременногоКаталога на время сессии проверки 

Сценарий: Создание черновика feature файла по заполненной таблице
 #   Когда В панели разделов я выбираю "Обработки"
 #   И     Я нажимаю кнопку командного интерфейса "BDDEditor"
 #   Тогда открылось окно "Обработка требований: BDDEditor [ver. 0.9.152]"
  
 #   Не понял зачем нам необходимо для такого простого сценария куда то идти
 #   Пусть по умолчанию флаг будет равен Истина и всё  
 #   Когда В открытой форме я перехожу к закладке с заголовком "Параметры"
 #   И     В открытой форме я изменяю флаг с заголовком "Показывать расшифровку"
 #   Тогда В открытой форме флаг с заголовком "Показывать расшифровку" равен Ложь Изменяем флаг    
    
    Когда В открытой форме я перехожу к закладке с заголовком "Сбор требований"
    И     В открытой форме в поле "СтруктураДляЗагрузки" заполнено значение
    И     В открытой форме я нажимаю на кнопку с заголовком "Обновить из временного каталога"
    Тогда В открытой форме в ТЧ "ТЗСбораТребований" заполняется список фача-файлов из временного каталога
    
    Когда В открытой форме я нажимаю на кнопку с заголовком "Добавить"
    И     В открытой форме в ТЧ "ТЗСбораТребований" в поле с заголовком "Функционал" я ввожу текст "Создание фича-файла по кнопке"
    И     В открытой форме в ТЧ "ТЗСбораТребований" в поле с заголовком "Роль (Как)" я ввожу текст "системный аналитик"
    И     В открытой форме в ТЧ "ТЗСбораТребований" в поле с заголовком "Количество сценариев" я ввожу текст "1"
    И     В открытой форме в ТЧ "ТЗСбораТребований" в поле с заголовком "Описание функционала (Я хочу)" я ввожу текст "автоматическое создание фича-файла по шаблону"
    И     В открытой форме в ТЧ "ТЗСбораТребований" в поле с заголовком "Цель (Чтобы) Ожидаемый конечный результат" я ввожу текст "не создавать вручную фича-файлы"
    Тогда     В форме "Обработка требований: BDDEditor" в ТЧ "ТЗСбораТребований" я завершаю редактирование строки
    И     В открытой Форме в ТЧ "ТЗСбораТребований" добавилась новая строка
    
    Когда В открытой форме я нажимаю на кнопку с заголовком "Создать фичи по шаблону"
    Тогда создается фича-файл "СозданиеФича_файлаПоКнопке.feature" внутри временного каталога в папке "Drafts"
	И файл "СозданиеФича_файлаПоКнопке.feature" идентичен файлу ".fixtures\СозданиеФича_файлаПоКнопкеЭталон.feature"

#	Не обязательно - сессия тестирования должна закрываться Behavior принудительно
#	И     Я закрываю окно с заголовком "Обработка требований: BDDEditor [ver. 0.9.152] *"
