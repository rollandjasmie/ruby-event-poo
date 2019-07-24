require "pry"
class User
  attr_accessor :email, :age
    @@count=[]
    def initialize(email, age)
    	@email = email
    	@age = age.to_i
        @@count << email
        @@count << age
    end

    def self.all
     return @@countu
    end
end

