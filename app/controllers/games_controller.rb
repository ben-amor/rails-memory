class GamesController < ApplicationController
  def new

  end

  def create
      game = Game.new
      game.save
  end

  def index
    @games = Game.all
  end

  def edit
    id = params[:id] #QUESTION is just 'knowing' that there will be an Id parameter in the collection okay?
    @game = Game.find(id)
    #TODO can't-find-it case

    #Do things to the game state
    @game.guess(1,3) #TODO get guesses from params
    @game.save

    #TODO user feedback - good guess / bad guess
  end

end
