# Factorial App

This is a factoria app which will do the following:

1. Explain the concept of factorials via a layout.erb
2. The layout.erb will have a hyperlink to the factorial wiki
3. Provide a different view based upon the user input
	* zero_result.erb if the user enters '0'
	* negative_result.erb if the user enters a negative number
	* positive_result.erb if the user enters a positive number

## Run factorial_app.rb to run the app

If you don't have *sinatra-reloader gem* please hash out **require 'sinatra/reloader' if development?** on app.rb