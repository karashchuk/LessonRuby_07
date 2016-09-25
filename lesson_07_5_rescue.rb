# 5. Benchmark rescue nil
# Проведите небольшое расследование и выясните что работает быстрее, классическая схема обработки исключения:

require 'Benchmark'
begin
  100/0
rescue #ZeroDivisionError, NoMethodError => error
#   puts "[Деление на ноль] Error, error!"
#   p error.backtrace
end
# или обработка исключения в одну строку:
# # Buggy code rescue nil
100/0 rescue nil

Benchmark.bm(20) do |bm|

  bm.report("begin with error") do
    100_000.times do
      begin
        100/0
      rescue
      end
    end
  end

  bm.report("begin no error") do
    100_000.times do
      begin
        100/1
      rescue
      end
    end
  end
  bm.report("nil error") do
    100_000.times{100/0 rescue nil}
  end
  bm.report("nil no error") do
    100_000.times{100/1 rescue nil}
  end
end
