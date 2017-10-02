module GamesHelper

  def get_clue(game)
    clue = ''
    letter_array = game.letters.split('')
    letter_array.each |letter| do
      clue << letter == Game.GuessedCharacter ? Game.GuessedCharacter : '?'
    end
  end

end
