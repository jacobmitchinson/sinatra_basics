require 'sinatra'

get '/' do 
  "Hello, world!"
end

get '/about' do 
  "I'm Jake. Yes I am"
end

get '/hello/:name' do
  "Hello there #{params[:name].capitalize}"
end

get '/form' do 
  erb :form
end

post '/form' do 
  "You said: #{params[:message]}"
end

get '/secret' do
  erb :secret
end

post '/secret' do 
  params[:secret].reverse
end

get '/decrypt/:secret' do 
  "Here's eyes only: "
  params[:secret].reverse
end

not_found do 
  status 404
  'not found'
end

# classes can be represented as so:

class HelloWorldApp < Sinatra:Base
  get '/?:name?' do 
    "Hello, #{params[:name] ? params[:name] : "world"}!"
  end
end