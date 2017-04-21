require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

 describe('the anagrams and antigrams path', {:type => :feature}) do
  it('processes the user inputs and returns whether they are anagrams, antigrams or palindromes') do
    visit('/')
    fill_in('input_1', :with => 'hello')
    fill_in('input_2', :with => 'yellow')
    click_button('Submit')
    expect(page).to have_content('These words are not anagrams')
  end
 end
