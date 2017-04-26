require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/cd')
require('./lib/artist')
require('pry')

get('/') do
  erb(:index)
end
