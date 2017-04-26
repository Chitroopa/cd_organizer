require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/cd')
require('./lib/artist')
require('pry')

get('/') do
  erb(:index)
end

get('/cds') do
  @cds = CD.all()
  erb(:cds)
end

get('/cds/new') do
  erb(:cds_form)
end

post('/cds') do
  title = params.fetch("title")
  num_songs = params.fetch("num-songs")
  cd = CD.new(title, num_songs)
  cd.save()
  erb(:success)
end

get('/cds/:id') do
  @cd = CD.find(params.fetch("id"))
  erb(:cd)
end

get('/artists') do
  @artists = Artist.all()
  erb(:artists)
end

get('/artists/new') do
  erb(:artists_form)
end

post('/artists') do
  name = params.fetch("name")
  artist = Artist.new(name)
  title = params.fetch("title")
  num_songs = params.fetch("num-songs")
  cd = CD.new(title, num_songs)
  artist.add_cd(cd)
  artist.save()
  erb(:success)
end

get('/artists/:id') do
  @artist = Artist.find(params.fetch("id"))
  erb(:artist)
end
