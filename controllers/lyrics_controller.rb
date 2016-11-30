class LyricsController < ApplicationController

	get '/' do

		Lyrics.all.to_json
	end 

	get '/:id' do

		@id = params[:id]
	
		Lyrics.find(@id).to_json
	
	end


	post '/createlyrics' do

		@artist = params[:artist]
		@song = params[:song]
		@lyrics = params[:lyrics]
		@year = params[:year]
		@genre = params[:genre]
		@image = params[:image]
		@user_id = params[:user_id]
		@album = params[:album]


		@model = Lyrics.new
		@model.artist = @artist
		@model.song = @song
		@model.lyrics = @lyrics
		@model.year = @year
		@model.genre = @genre
		@model.image = @image
		@model.user_id = @user_id
		@model.album = @album
		@model.save

		session[:user] = @model
		@username = session[:user][:username]

	end


	patch '/:id' do
		@id = params[:id]
		@artist = params[:artist]
		@song = params[:song]
		@lyrics = params[:lyrics]
		@year = params[:year]
		@genre = params[:genre]
		@image = params[:image]
		@user_id = params[:user_id]



		@model = Lyrics.find(@id)
		@model.artist = @artist
		@model.song = @song
		@model.lyrics = @lyrics
		@model.year = @year
		@model.genre = @genre
		@model.image = @genre
		@model.user_id = @genre
		@model.save

		session[:user] = @model
		@username = session[:user][:username]



	end

	delete '/:id' do
		@id = params[:id]
		@model = Lyrics.find(@id)
		@model.destroy
		{:message => "item has been destroyed"}.to_json
	end



end		