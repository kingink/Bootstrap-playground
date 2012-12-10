require 'sinatra'

get '/' do
	erb :index
end

get '/index' do
	erb :index
end

get '/some_other_page' do 
	erb :some_other_page
end

get '/boo' do
	"Whatever"
end
