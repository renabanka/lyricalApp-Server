class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require

	register Sinatra::CrossOrigin

	# Connect activerecord to db
	ActiveRecord::Base.establish_connection(
		:adapter => 'mysql2', # type of database
		:database => 'lyrical'
	)

	require 'sinatra'
	require 'sinatra/cross_origin'
	
	# CORS
	set :allow_origin, :any
	set :allow_methods, [:get, :post, :options]

	# options "*" do
	# 	response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
	# 	response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
	# 	200
	# end

	options "*" do
	  response.headers["Allow"] = "HEAD,GET,PUT,DELETE,OPTIONS"

	  # Needed for AngularJS
	  response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"

	  halt HTTP_STATUS_OK
	end



	configure do
  		enable :cross_origin
	end


	# set views, public 
	set :views, File.dirname(__FILE__) + '/../views' #out of the controllers folder  
	set :public_folder, File.dirname(__FILE__) + '/../public' 	

	enable :sessions

	# test index route
	get '/' do
		@message = "Welcome to Lyrical!"
	end	


	# error messages
	not_found do
		{:message => "not found"}.to_json
	end 	

	get '/' do
		{:message => "home page"}.to_json
	end

	# authentication
	def does_user_exist?(username)
		user = Account.find_by(:username => username.to_s)
		if user
			p 'user is true'
			return true
		else
			p 'user is false'
			return false
		end
	end

	def is_not_authenticated
		session[:user].nil?	#bool
	end




end	