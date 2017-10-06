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
    #TODO can't-find-it case
    id = params[:id] #QUESTION is just 'knowing' that there will be an Id parameter in the collection okay?
    @game = Game.find(id)
  end

  def handle_edit_post
    id = params[:id]
    @game = Game.find(id)

    index = params[:index].to_i
    other_index = params[:other_index].to_i

    #Do things to the game state
    if index != nil && other_index != nil # user has taken a guess (rather than navigated to the page via index or )
      @game.guess(index,other_index)
      @game.save
    end

    #TODO user feedback

    redirect_to url_for(:controller => :games, :action => :edit)
  end

end
