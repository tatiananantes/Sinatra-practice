require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello!"
end

get '/secret' do
  "We are discovered, flee at once!"
end

get '/clear' do
  "Lovely weather we're having!"
end

get '/raining' do
  "It's raining outside!"
end

get '/random-cat' do
  @cat_name = ["Amigo", "Mel", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  p "These are the paramteres: #{params}"
  @cat_name = params[:name]
  erb(:index)
end