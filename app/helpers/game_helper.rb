module GameHelper

  def get_clue(game_state_string)
    clue = ''
    letter_array = game_state_string.split('')
    letter_array.each do |letter|
      clue << (letter == Game::GuessedCharacter ? Game::GuessedCharacter : '?')
    end
    clue
  end

end
