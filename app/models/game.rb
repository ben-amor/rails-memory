class Game < ApplicationRecord

  GuessedCharacter = '*'.freeze

  def initialize
    super #QUESTION Rails models seem to need to call initialize on the base because of some sort of magic reason
    character_set = ['a','a','a','a','b','b','b','b','c','c','c','c','d','d','d','d','e','e','e','e']
    self.letters = '' #NOTE self. as letters is a member of the class. Just 'letters' will be treated as a local variable to the initialize method. letters comes from the schema via rails magic.
    random = Random.new(Time.now.to_i)
    while character_set.length > 0 do
      index = random.rand(0..character_set.length-1)
      self.letters << character_set[index]
      character_set.delete_at(index)
    end
  end

  def guess(index, other_index)
    #TODO guard clauses - out of range checks etc

    index -= 1 #TODO assuming input is in 1-based on 0-based
    other_index -= 1

    letter_array = self.letters.split('')
    if letter_array[index] == letter_array[other_index]
      letter_array[index] = GuessedCharacter
      letter_array[other_index] = GuessedCharacter
      self.letters = letter_array.join('')
    end
  end
end
