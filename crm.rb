require_relative 'contact.rb'
require 'sinatra'

get '/' do
  @contacts = Contact.all
  erb :index
end

get '/add_contacts' do
  @contacts = Contact.all
  erb :add_contacts
end

get '/about' do
  erb :about_me
end


after do
  ActiveRecord::Base.connection.close
end
