require "sinatra"
require "./lib/player"
require "./lib/game"

class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/names" do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)

    redirect "/play"
  end

  get "/play" do
    @game = Game.instance
    erb :play
  end

  get "/attack" do
    @game = Game.instance
    @game.attack(@game.current_player)
    if @game.current_player.is_hp_zero?
      redirect '/game_over'
    else
      erb :attack
    end
  end

  get "/game_over" do
    @game = Game.instance
    erb :game_over
  end

  run! if app_file == $0
end
