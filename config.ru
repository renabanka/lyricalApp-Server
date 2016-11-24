require 'sinatra/base'

#controllers
require './controllers/application_controller'
require './controllers/account_controller'
require './controllers/lyrics_controller'
require './controllers/userlyrics_controller'

#models
require './models/accounts'
require './models/lyrics'
require './models/userlyrics'



#map controllers to routes
map ('/') { run ApplicationController } 
map ('/account') { run AccountController }
map ('/dashboard') { run LyricsController }
map ('/userlyrics') { run UserLyricsController }


before '/*' do
  puts "Route Log:"
  puts request.host
  puts params
  puts request.path
end

after '/*' do
  puts 'Completed Route Log:'
  puts response.body
  puts response.status
end