require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'functions.rb'

enable :sessions

get '/' do
	@title = 'Factorials'
	erb :get_number
end

post '/set_number' do
	number = params[:user_number].to_i
	session[:algorithm] = Algorithm.new
	
	if number < 0
		erb :negative_result, :locals => { :number => number }
	elsif number == 0
		erb :zero_result, :locals => { :number => number, :statement => session[:algorithm].factorial_statement(number), :factorial => session[:algorithm].factorial(number) }
	else	
		erb :positive_result, :locals => { :number => number, :statement => session[:algorithm].factorial_statement(number), :factorial => session[:algorithm].factorial(number) }
	end
end