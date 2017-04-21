class String
  define_method(:anagrams_antigrams) do
    inputted_words = self
    inputted_words_array = inputted_words.split()
    word_one_array = inputted_words_array.first().split("").sort()
    word_two_array = inputted_words_array.last().split("").sort()
      if word_two_array.eql?(word_two_array)
      "These words are anagrams"
    end
  end
end
