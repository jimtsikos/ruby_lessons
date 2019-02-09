require_relative 'authentication'
 
class Student
  include Authentication
  attr_accessor :first_name, :last_name, :email, :username, :password
 
  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end
 
  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username},
                  email address: #{@email}"
  end
 
end
 
test = Student.new("Firstname", "Lastname", "username", "user@example.com",
		   "password")
 
hashed_password = test.create_hash_digest(test.password)
 
puts hashed_password
