# object orientation project 

# Build a Social Platform
# The simplest version of this will have at least two objects: users and posts. 
# The users might have attributes like email, age, and password. 
# The posts might have attributes like date, time, text, and posted_by. 
# This project becomes complicated because each user should have an array of posts, and as they create more and more posts, those posts should be added to that array.


puts "Welcome! Create your account here. Enter your name."
userName = gets.chomp
puts "Enter your age."
userAge = gets.chomp.to_i

puts "OK, now enter your email."
userEmail = gets.chomp

puts "Create a password for your account."
userPassword = gets.chomp

#define the user
class User
    attr_accessor :userName, :userEmail
    attr_reader :userAge, :userPassword
    
    
    def initialize(userName, userAge, userEmail, userPassword)
        @userName = userName
        @userAge = userAge
        @userEmail = userEmail
        @userPassword = userPassword
        @userposts = []
    puts "Account for {@userName} created successfully!"
    end
end

#initialize user
userName = User.new(userName, userAge, userEmail, userPassword)
#print user name
#puts userA.userName
#userName.userName = "nameA"
#userName.userEmail = "emailA"


#prompt user to enter post
puts "Hello! Post your comments here."


#define posts
class Posts
    attr_accessor :userPost, :likes, :likers
    attr_reader :date, :time, :userName

    def initialize(date, userName, userPost)
        @date = date
        @userPost = userPost
        @userName = userName
        @likes = 0
        @likers = []

    #puts "#{userPost}" 
    
    require 'date'
    print Date.today 
    puts " posted by #{userName}."
    userName = gets
    end
    
    def post_liked(randomuser)
        @likes += 1
        @likers.push(randomuser)
    end
end


#initialize post/ new post instance
loop do
post = gets.chomp

  if post != "exit"
    postA = Posts.new("date", "#{userName}", "#{post}")
    
    postA.post_liked(userA.userName)
    postA.post_liked("userB")

    puts "Liked by #{postA.likes}:"
    puts postA.likers
    puts "Enter another post or type exit.)"
    
  elsif post == "exit" 
    puts "Have a nice day!"
  end
end


# loop do
# post = gets.chomp

#   if post != "exit"
#     postA = Posts.new("date", "luckydog", "texttext")
#     postA.post_liked(userA.userName)
#     postA.post_liked("NameB") 

#     puts "Liked by #{postA.likes}:"
#     puts postA.likers
#     puts "Enter another post or type exit.)"
    
#   elsif post == "exit" 
#     puts "Have a nice day!"
#   end
# end
