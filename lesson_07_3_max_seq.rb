# 3. Максимальная сумма
# Существует массив числовых элементов. Напишите метод maximum_sequence,
# который возвращает непрерывный подмассив, содержащий хотя бы один элемент,
# сумма элементов которого максимальна. Например:
origin = [-1, -13, -2, 1, -3, 4, -1, 2, 1, -5, 4]
aa = [-2, -1, -2, 0, 1, -2, -5, -2]
#
# maximum_sequence(origin) # => [4, -1, 2, 1]
def sum ary
  ary.inject {|sum, n| sum + n}
end

def maximum_sequence ary
  length = ary.length
  i = 0
  maxim = ary[0]
  maxim_seq = [maxim]
  while  i < length
    j = 0 + i
    while j < length
      seq = ary[i..j]
      if sum(seq) > maxim
        maxim_seq = seq
        maxim = sum(seq)
      end
      j += 1
    end
    i += 1
  end
  maxim_seq
end

p maximum_sequence(origin)
p maximum_sequence(aa)
