require 'sinatra'

get '/' do
	erb :index
end

get '/index' do
	erb :index
end

get '/about' do
	erb :about
end

get '/contact' do
	erb :contact
end

get '/some_other_page' do 
	erb :some_other_page
end

get '/boo' do
	"Whatever"
end
