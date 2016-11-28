class AccountController < ApplicationController

	@username = ''

	get '/' do





		Account.all.to_json

	end

	get '/logout' do

		binding.pry
		session[:user] = nil
		@username = nil
		redirect '/'
	end





	get '/:id' do

		@id = params[:id]
		Account.find(@id).to_json
	
	end



	post '/register' do

		p params

		p '----------------------------------------------------------'

		@username = params[:username]
		p @username
		@email = params[:email]
		@password = params[:password]

		


		if does_user_exist?(@username) == true
            'User already exists'
        else    
			
			password_salt = BCrypt::Engine.generate_salt
			password_hash = BCrypt::Engine.hash_secret(@password, password_salt)

			@model = Account.new
			@model.username = @username
			@model.email = @email
			@model.password_hash = password_hash
			@model.password_salt = password_salt
			@model.save

			session[:user] = @model
			'User does not exist'
        end

	end



	post '/login' do

		p params

		p '----------------------------------------------------------'

		@username = params[:username]
		p @username
		@password = params[:password]

		if does_user_exist?(@username) == false
            
            	@account_message = "Sorry, that username does not exist. Please register or try again"
				return {:message => @account_message}.to_json
        else  
	        @model = Account.where(:username => @username).first
	        @pw = BCrypt::Engine.hash_secret(params[:password], @model.password_salt)
	        if @pw == @model.password_hash
				@account_message = "Welcome back!"
				session[:user] = @model
				return {:message => @account_message, :key => @model.id}.to_json
			# if @model.password_hash == BCrypt::Engine.hash_secret(@password, @model.password_salt)
			else
				@account_message = "Sorry, you password did not match. Try again?"
				return {:message => @account_message}.to_json
			end
        end
	end 




	


end











