class User
  
  attr_accessor :first_name, :last_name, :username, :email, :followers, :tweets
  
  def initialize(first_name, last_name, email, username)
    
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @tweets = []
    
    @followers = []
    
  end
  def get_input
    gets.strip
  end
  
  def followers(options = {})
    
    if options[:pretty_print]
      if has_followers?
        @followers.each { |follower| puts follower }
      else
        puts "This user has no followers"
      end
    end
    
    @followers
    
  end
  
  def add_follower(follower)
    @followers.push(follower) unless @followers.include?(follower)
  end
  
  def remove_follower(follower)
    @followers.delete(follower) 
  end
    
  def has_followers?
    !@followers.empty?
  end
  
  def to_s
    # "Follower Info -- First Name:#{@first_name} Last Name:#{@last_name} Username: #{@username}"
  end
  
  def display_tweets
    
    if @tweets.empty?
      puts "there are no tweets to display!"
    else
      @tweets.each { |tweet| puts tweet }
    end
    
  end
  
  ## Your implementation of the create_tweet method should go here
  def create_tweet
    puts "Please enter your Tweet"
    content = get_input
    tweet = Tweet.new(self, content)
    @tweets.push tweet
    return tweet
  end

end