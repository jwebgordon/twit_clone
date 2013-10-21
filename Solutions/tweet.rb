class Tweet

  attr_accessor :content, :created_at, :user
  
  def initialize(content, user)
    
    raise ArgumentError, "tweet content must be a string!" unless content.is_a?(String)
    raise ArgumentError, "tweet is too long!" if content.length > 140
    
    ## Note that it's also ok if students don't raise ArgumentError and instead just call exit
    ## to exit the program
      
    @content = content
    @created_at = Time.now
    @user = user
    
  end
  
  def to_s
    "\n\n####################\n"\
    "Username: #{user.username} \n"\
    "Tweet: #{@content} \n"\
    "Tweeted At: #{@created_at} \n"
  end

end