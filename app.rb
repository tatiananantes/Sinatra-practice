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

get '/cat' do
  erb(:index)
end