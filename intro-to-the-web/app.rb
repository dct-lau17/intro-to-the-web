require 'sinatra'

get '/' do
  'hello!'
end

get '/secret' do
  'This is a secret page'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
   erb(:index)
end

get '/named-cat' do
 p params
  @name = params[:name]
  @color = params[:color]
   erb(:index)

end
