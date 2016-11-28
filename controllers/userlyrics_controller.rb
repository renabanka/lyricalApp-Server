class UserLyricsController < ApplicationController

  get '/' do
    Userlyrics.all.to_json


  end


    # loop through @userlyrics
    # get the .user_id
    # fetch Lyric.find()
    # save to array
    # return array to_json
    # be done
    # return the array of songs that matched to_json


  get '/:id' do

    @id = params[:id]
    Userlyrics.find(@id).to_json

  end


  post '/savelyrics' do

    @user_id = params[:user_id]
    @song_id = params[:song_id]
    @song = params[:song]
    @artist = params[:artist]


    @model = Userlyrics.new
    @model.user_id = @user_id
    @model.song_id = @song_id
    @model.song = @song
    @model.artist = @artist
    @model.save
    

  end

  delete '/:id' do
    @id = params[:id]
    @model = Userlyrics.find(@id)
    @model.destroy
    {:message => "item has been destroyed"}.to_json
  end


end