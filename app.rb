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
  content_type "text/html"
  '
  <!DOCTYPE html>
  <html>
    <head>
      <title>Cats</title>

      <style>
        img {
          border: dashed red;
          margin: 20px;
          padding-right: 40px;
        }
      </style>
    </head>

    <body>
      <img src="https://i.imgur.com/jFaSxym.png" alt="A cat" width="500" height="600">
    </body>
  </html>
  '
end