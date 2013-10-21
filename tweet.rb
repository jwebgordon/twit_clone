class Tweet


  attr_accessor :content, :created_at, :user
  
  ## Provide your own initialize method here
  def initialize(user, content="")
		if content.class == String and content.length < 140
  		@content = content
		else
 			puts "Please make your tweet less than 140 characters"
 			return
		end
  	@user = user
  	@created_at = Time.new.inspect
  	
  end
  
  def to_s
    "\n\n####################\n"\
    "Username: #{user.username} \n"\
    "Tweet: #{@content} \n"\
    "Tweeted At: #{@created_at} \n"
  end

end