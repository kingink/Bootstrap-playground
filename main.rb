require 'sinatra'
require 'sinatra/content_for'

helpers do
  def nav_tab(title, url, options = {})
    current_tab = options.delete(:current)
    options[:class] = (current_tab == title) ? 'active' : 'inactive'
    "<li class='#{options[:class]}'><a href='#{url}'>#{title}</a></li>"
  end

  def nav_dropdown_tab(title, options = {})
    current_tab = options.delete(:current)
    options[:class] = (current_tab == title) ? 'active' : 'inactive'
    "<li class='dropdown #{options[:class]}'>"
  end

  def currently_at(tab)
    erb :main_navigation, :locals => {current_tab: tab}
  end 
end

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

get '/action' do
  erb :action
end

get '/some_other_page' do 
  erb :some_other_page
end

get '/boo' do
  "Whatever"
end
