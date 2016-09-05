#This is a user class

require 'json'

class User #User class will be called to make new users
    attr_accessor :name, :email, :permiossions
    
    #need to instentiate the class
    #args[0] will be name, args[1] will be email, args is an array
    def initialize(*args) #this is a pre-built method used to initialize instance variables. Here we assign passed values from the array to instance varibales and instantiate them.
        @name = args[0]
        @email = args[1]
        @permissions = User.permissions_from_template  #permissions_from_template is the method called based on the user object.
    end

# defining the method called in the initialize method to open user_permissions_template.json file with permissions details
# load this file and then convert it into JSON object so ruby can manupulate it.
    def self.permissions_from_template
        filevar = File.read 'user_permissions_template.json'
        JSON.load(filevar, nil, symbolize_names: true)
    end    

# to save this new user details stored in the user object to a file called users.json which is a repo of users
    def save
        vara = {name: @name, email: @email, permissions: @permissions}.to_json  #vara is variable containing json object
        open('users.json', 'a') do |file|    #'a' appends what the do loop writes.
            file.puts vara                   #
        end
    end
end