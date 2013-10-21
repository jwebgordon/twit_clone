class Runnable

  require_relative 'user'
  require_relative 'tweet'

  def run
    
    welcome_message
    @user = create_user
    
    loop do
      input = gets.strip
      handle_input input
    end
    
  end
  
  def handle_input input
    
    case input
    when "v"
      @user.display_tweets
    when "q"
      end_runnable
    ## Your case for when the user types "c" then hits return should go here
    when "c"
      @user.create_tweet
    else
      invalid_command input
    end
      
  end
  
  def end_runnable
    puts "Thanks for using this Twitter knockoff!"
    exit
  end
  
  def welcome_message
    str = "##############################\n"\
          "Welcome to a Twitter knockoff!\n"\
          "##############################\n"\
          "* Create a tweet by pressing (c)\n"\
          "* View your tweets by pressing (v)\n"\
          "* And quit by pressing (q) \n"\
          "Be sure to hit return after entering a command!"
    puts str
  end
  
  def invalid_command command
    puts "#{command} is not a valid command!"
  end
  
  def create_user
    
    print "Please enter your first name: "
    first_name = gets.chomp
    print "Please enter your last name: "
    last_name = gets.chomp
    print "Please enter your email: "
    email = gets.chomp
    print "Please enter a username: "
    username = gets.chomp
    
    user = User.new(first_name, last_name, email, username)
    puts"\nUser Account successfully created, you may now post tweets\n"
    user
    
  end
  
  

end

# Start the program

runnable = Runnable.new
runnable.run

