require('rspec')
require('anagrams_and_antigrams')
require('pry')

describe('String#anagrams_antigrams') do
  it('checks if two inputted words are anagrams of each other') do
  expect('ruby bury'.anagrams_antigrams()).to(eq("These words are anagrams"))

  # it('accounts for the possibility that')
  end
end


# describe('Fixnum#numbers_to_words') do
#   it("returns a string that translates a one-digit number into written words") do
#     expect(3.numbers_to_words()).to(eq("three"))
#   end
