def echo(says)
  says
end

def shout(says)
  says.upcase
end

def repeat(says, num=2)
  [says] * num * " "
end

def start_of_word(says,num)
  says[0..(num-1)]
end

def first_word(says)
  says.split.first
end

#this will capitalize all the words, except for the little_words that aren't the first in the sentence
def titleize(says)
  little_words = %w{and over the}
  says.split.each_with_index.map{|word, index| little_words.include?(word) && index > 0 ? word : word.capitalize }.join(" ")
end
