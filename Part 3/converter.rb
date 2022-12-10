# frozen_string_literal: true

# class Converter
class Converter
  def initialize(str, num)
    @string = str
    @numbers = num
  end

  def convert
    @string.each.with_index do |word, index|
      word.each_char.with_index do |elem, jor|
        code = elem.ord
        modified = code + @numbers[index][jor].to_i
        modified_symbol = modified.chr('UTF-8')
        word[jor] = modified_symbol
      end
    end
  end

  def get
    @string
  end
end


# #functions
def create_string
  a = ('a'..'q').to_a.shuffle.join
  a.slice(rand(2), rand(5..10))
end

def create_number(words, numbers)
  words.each do |w|
    len = w.length
    num = ''
    len.times do
      num += rand(0..10).to_s
    end
    numbers.append(num.slice(0, len))
  end
end

def unconvert(words_h, numbers)
  words_h.each.with_index do |word, index|
    word.each_char.with_index do |elem, j|
      code = elem.ord
      modified = code - numbers[index][j].to_i
      modified_symbol = modified.chr('UTF-8')

      words_h[index][j] = modified_symbol
    end
  end
  words_h
end
