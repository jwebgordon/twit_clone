##Homework
###Adding Tweets

![GA Logo](../../../assets/BEWD_Logo.png)

**This homework is intended to give you even more practice with classes and objects by adding functionality to the Twitter Knockoff that we coded together in Lesson 6.  As before, this is intended to be a challenging assignment, so do as much as you can and if you get frustrated, don't worry, it's meant to be that way :)**  

**This homework is due by the start of class on Tuesday, October 15th**

***
####Requirements

1. Add a case to the `handle_input` method of the `Runnable` class that calls a `create_tweet` method on the `@user` instance variable when the user types the letter `c` and hits `return`
<br /><br />
2. Add a method named `create_tweet` to the `User` class. This method should:
	*	Take input from the user
	*	Call `Tweet.new` with the user's input as an argument and a reference to the `user` creating it
	*	If the tweet is successfully created in the previous step, append it to the user's `@tweets` array
<br /><br />
3. Provide your own implementation of the `Tweet` class' `initialize` method that should:
	*	Take the content of the tweet that the user inputed in Requirement 2 above
	*	Make sure that the content is a `String`
	*	Make sure that the content is less than 140 characters long
	*	If either of the two preceding conditions are not met, notify the user that there was an error and exit the program  
	* Sets the content of the tweet to an instance variable named `@content`
	* Sets the value of the instance variable `@created_at` to the current time
		* Hint on this requirement: Look up the Ruby `Time` class
	* Sets the reference to the `user` that was passed in as a parameter to the `@user` instance variable
	
***	

#####Extra Credit

*	Instead of exiting if the Tweet content is neither a string nor less than 140 characters long, notify the user that there was an error and keep the program running
	*	Hint: Look up 'ArgumentError ruby', 'error handling ruby', and 'begin rescue syntax ruby' in Google	
	