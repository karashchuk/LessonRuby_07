# 1. Методы ActiveSupport API
# Для класса Numeric:
# •	Метод, возвращающий объект класса ActiveSupport::Duration, представляющий n часов, n минут, n секунд
# •	Метод, возвращающий экземпляр класса Time, со значением времени через n секунд от текущего момента
# •	Метод, возвращающий экземпляр класса Time, со значением времени n секунд тому назад от текущего момента
# Для класса String:
# •	Метод, возвращающий константу по имени строки
# •	Метод, возвращающий множественное число для значения строки
# •	Метод, возвращающий строку без подстрок совпавших по шаблону который передан в метод в качестве аргумента
# •	Метод, проверяющий, стостоит ли строка лишь из пробельных символов
# •	Метод, заменяющий символ _ на -
# Для модуля ActiveSupport::Configurable:
# •	Метод для доступа к упорядоченному хэшу, хранящему конфигурацию (пользовательские настройки) для класса
