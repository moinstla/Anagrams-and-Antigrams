class String
  define_method(:anagrams_antigrams) do |input_2|

    input_1_array = self.gsub(/\W+/, '').downcase().split("")
    input_2_array = (input_2).gsub(/\W+/, '').downcase().split("")
    word_one_array = input_1_array.sort()
    word_two_array = input_2_array.sort()
    intersection_array = word_one_array & word_two_array

    if self.scan(/[aeiouyAEIOUY]/).count.<(1) | input_2.scan(/[aeiouyAEIOUY]/).count.<(1)
      "You need to input actual words"
    elsif intersection_array.length() == 0
      "These words are antigrams"
    elsif input_1_array.eql?(input_2_array.reverse())
    "These words are anagrams and palindromes"
    elsif word_one_array.eql?(word_two_array)
    "These words are anagrams"
    else
    "These words are not anagrams"
    end

  end
end
