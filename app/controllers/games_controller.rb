class GamesController < ApplicationController
  def new

  end

  def create
      game = Game.new
      game.save
      byebug
  end
end
