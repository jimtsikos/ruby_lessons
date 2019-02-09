class Student
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
 
test1 = Student.new("Firstname1", "Lastname1", "username1", "email1@example.com",
                      "password1")
test2 = Student.new("Firstname2", "Lastname2", "username2", "email2@example.com",
                      "password2")
puts test1
puts test2
test1.last_name = test2.last_name
puts "test1 is altered"
puts test1
