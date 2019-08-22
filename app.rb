require 'sinatra/base'
class Battle < Sinatra::Base
  enable :sessions
  PLAYER1HP = 50
  PLAYER2HP = 50
  PLAYER1HPMIN = 0
  PLAYER2HPMIN = 0
  get '/' do
    'Testing infrastructure working!'
  end

  get '/names' do
    erb(:index)
  end
  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end
  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @player1hp = PLAYER1HP
    @player2hp = PLAYER2HP
    erb :play
  end
  
    

  # start the server if ruby file executed directly
  run! if app_file == $0
end