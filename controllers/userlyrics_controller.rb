class UserLyricsController < ApplicationController

  get '/' do
    Userlyrics.all.to_json

  end

  get '/user/:id' do
    @user_id = params[:id]
    @users_lyrics = Userlyrics.where(:user_id => @user_id)



    # loop through @userlyrics
    # get the .user_id
    # fetch Lyric.find()
    # save to array
    # return array to_json
    # be done
    # return the array of songs that matched to_json
  end

  get '/:id' do

    @id = params[:id]
    Userlyrics.find(@id).to_json

  end


  post '/savelyrics' do

    @user_id = params[:user_id]
    @song_id = params[:song_id]


    @model = Userlyrics.new
    @model.user_id = @user_id
    @model.song_id = @song_id
    @model.save
    

  end


end