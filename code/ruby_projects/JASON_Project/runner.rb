require 'pp'  #is for pretty print
require_relative 'user' #relative is the saying take a relative path to find the user class

user = User.new 'Samip','SamipFozdar@gmail.com'

pp user

user.save