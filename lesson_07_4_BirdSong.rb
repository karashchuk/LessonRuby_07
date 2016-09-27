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
require 'open-uri'
require 'json'
class HTTPClient

  def get(url, params)
    open(url+params).read#.each_line do |line|
      #puts line
      #puts
    #end
  end

end

class DataStore

  def save(data)
    #JSON.parse(data)
  end

end

class BirdSong

  # NOTE: пример окончательной строки запроса: http://www.xeno-canto.org/api/2/recordings?query=nightingale+cnt:russia+q:A
  URL = 'http://www.xeno-canto.org/api/2/recordings'

  def fetch(bird:, country:, quality: :A)
    data = @client.get(URL,"?query=#{bird}+cnt:#{country}+q:#{quality}")
    p JSON.parse(data)

    #@store.save(data)
    # TODO: Implement me
  end

  private

  def initialize client: HTTPClient.new, store: DataStore.new
    @client = client
    @store = store
  end

end

BirdSong.new.fetch(bird: :nightingale, country: :russia)
#HTTPClient.new.get('http://www.xeno-canto.org/api/2/recordings',BirdSong.new.fetch(bird: :nightingale, country: :russia))
