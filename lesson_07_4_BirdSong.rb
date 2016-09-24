# 4. Соловьиная трель
# Используя Инъекцию Зависимостей напишите класс BirdSong и определите в нём метод fetch.
# Данный метод должен делать вызов к API стороннего сервиса, получать результат и сохранять его в YAML файле в виде:
# - gen:  ''
#   sp:   ''
#   ssp:  ''
#   file: ''
#
# - gen:  ''
#   sp:   ''
#   ssp:  ''
#   file: ''
# Используйте этот код в качестве отправной точки:
class HTTPClient

  def get(url, params)
    # TODO: Implement me
  end

end

class DataStore

  def save(data)
    # TODO: Implement me
  end

end

class BirdSong

  # NOTE: пример окончательной строки запроса: http://www.xeno-canto.org/api/2/recordings?query=nightingale+cnt:russia+q:A
  URL = 'http://www.xeno-canto.org/api/2/recordings'

  def fetch(bird:, country:, quality: :A)
    # TODO: Implement me
  end

end

BirdSong.new.fetch(bird: :nightingale, country: :russia)
