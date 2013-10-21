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
    "Follower Info -- First Name:#{@first_name} Last Name:#{@last_name} Username: #{@username}"
  end
  
  def display_tweets
    
    if @tweets.empty?
      puts "there are no tweets to display!"
    else
      @tweets.each { |tweet| puts tweet }
    end
    
  end
  
  def create_tweet
    
    print "What do you want to tweet?"
    content = gets.chomp
    
    ## Most students are probably not familiar with begin => rescue syntax,
    ## so it's ok if they don't have that part of it
    
    begin
      tweet = Tweet.new(content, self)
      @tweets.push(tweet)
    rescue ArgumentError => e    
      puts "While creating a tweet, there was an error #{e}"
    end
    
    
  end

end