require('rspec')
require('anagrams_and_antigrams')
require('pry')

describe('String#anagrams_antigrams') do
  it('checks if two inputted words are anagrams of each other') do
    expect("ruby".anagrams_antigrams("bury")).to(eq("These words are anagrams"))
  end

  it('checks if the inputted words are anagrams, regardless of cases') do
    expect("alert".anagrams_antigrams("LATER")).to(eq("These words are anagrams"))
  end

  it('checks if the inputted words are palindromes') do
    expect("desserts".anagrams_antigrams("stressed")).to(eq('These words are anagrams and palindromes'))
  end

  it('checks if user inputted words') do
    expect('xz'.anagrams_antigrams("good")).to(eq('You need to input actual words'))
  end

  it('checks if words are antigrams') do
    expect('dog'.anagrams_antigrams('cat')).to(eq('These words are antigrams'))
  end
end
