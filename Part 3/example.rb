def create_string
  a = ('a'..'z').to_a.shuffle.join
  a.slice(rand(2), rand(3..8))
end

words = []
rand(2..6).times do
  words.append(create_string)
end

p words

numbers = []

def create_number(words, numbers)
  words.each do |w|
    len = w.length
    num = ''
    len.times do
      num += rand(0..6).to_s
    end
    numbers.append(num.slice(0, len))
  end
end

create_number(words, numbers)
p numbers

def unconvert(words, numbers)
  words.each.with_index do |word, index|
    # raise AntonError, if word.length != @numbers[index].length

    word.each_char.with_index do |elem, j|
      code = elem.ord
      modified = code - numbers[index][j].to_i
      modified_symbol = modified.chr('UTF-8')
      word[j] = modified_symbol
    end
  end
  words
end

p unconvert(words, numbers)
