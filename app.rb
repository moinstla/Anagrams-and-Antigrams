require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagrams_and_antigrams')
require('pry')

get('/') do
  erb(:index)
end

get '/anagrams' do
  input_1 = params.fetch("input_1")
  input_2 = params.fetch("input_2")
  @result = input_1.anagrams_antigrams(input_2)
  erb(:result)
end
