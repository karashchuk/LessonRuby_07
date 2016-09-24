# 1. Методы ActiveSupport API
require 'active_support/all'
# Для класса Numeric:
# •	Метод, возвращающий объект класса ActiveSupport::Duration, представляющий n часов, n минут, n секунд
#tt = ActiveSupport::Duration.new(day,1)
n=5
puts n.seconds
puts n.minutes
puts n.hours
#puts tt


# •	Метод, возвращающий экземпляр класса Time, со значением времени через n секунд от текущего момента
puts 2000.seconds.from_now

# •	Метод, возвращающий экземпляр класса Time, со значением времени n секунд тому назад от текущего момента
puts 2000.seconds.ago

# Для класса String:
# •	Метод, возвращающий константу по имени строки
p 'Module'.constantize
# •	Метод, возвращающий множественное число для значения строки
p 'man'.pluralize
p 'apple'.pluralize

# •	Метод, возвращающий строку без подстрок совпавших по шаблону который передан в метод в качестве аргумента
str = "foo bar test"
p str.remove(" test")                 # => "foo bar"
p str.remove(" test", /bar/)          # => "foo "

# •	Метод, проверяющий, стостоит ли строка лишь из пробельных символов
p '    '.blank?
p "\n".blank?
p "     jmj    ".blank?

# •	Метод, заменяющий символ _ на -
p 'Name_status_opt'.dasherize

# Для модуля ActiveSupport::Configurable:
# •	Метод для доступа к упорядоченному хэшу, хранящему конфигурацию (пользовательские настройки) для класса

class User
  include ActiveSupport::Configurable
end

user = User.new

user.config.allowed_access = true
user.config.level = 1

p user.config.allowed_access # => true
p user.config.level
