# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end


  get '/play' do
    @game = Game.instance
    erb :play
  end

  before do
    @game = Game.instance
  end

  get '/attack' do
    @game.attack(@game.opponent_of(@game.current_turn))
    erb :attack
  end

  post '/switch-turns' do
    @game.switch_turns
    redirect('/play')
  end

  run! if app_file == $PROGRAM_NAME
end
