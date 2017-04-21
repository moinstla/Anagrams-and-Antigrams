require('rspec')
require('anagrams_and_antigrams')
require('pry')

describe('String#anagrams_antigrams') do
  it('checks if two inputted words are anagrams of each other') do
    expect('ruby bury'.anagrams_antigrams()).to(eq("These words are anagrams"))
  end

  it('checks if the inputted words are anagrams, regardless of cases') do
    expect('ALERT later'.anagrams_antigrams()).to(eq("These words are anagrams"))
  end

  it('checks if the inputted words are palindromes') do
    expect('desserts stressed'.anagrams_antigrams()).to(eq('These words are anagrams and palindromes'))
  end

  it('checks if user inputted words') do
    expect('xyz dog'.anagrams_antigrams()).to(eq('You need to input actual words'))
  end
end
