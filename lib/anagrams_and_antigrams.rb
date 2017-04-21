class String
  define_method(:anagrams_antigrams) do
    inputted_words = self.downcase()
    inputted_words_array = inputted_words.split()
    word_one_array = inputted_words_array.first().split("").sort()
    word_two_array = inputted_words_array.last().split("").sort()
    vowel_array = ["a","e","i","o","u"]
    if word_one_array.join().scan(/[aeiou]/).count.<(1).|word_one_array.join().scan(/[aeiou]/).count.<(1)
      "You need to input actual words"
    elsif word_one_array.eql?(word_two_array) && inputted_words_array[0] == inputted_words_array[1].reverse()
    "These words are anagrams and palindromes"
    elsif word_one_array.eql?(word_two_array)
    "These words are anagrams"
    else
    "These words are not anagrams"
    end
  end
end
