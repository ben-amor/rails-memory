class Game < ApplicationRecord
  attr_accessor :letters

  def initialize
    super #QUESTION Rails models seem to need to call initialize on the base because of some sort of magic reason
    character_set = ['a','a','a','a','b','b','b','b','c','c','c','c','d','d','d','d','e','e','e','e']
    letters = ''
    random = Random.new(Time.now.to_i)
    while character_set.length > 0 do
      index = random.rand(0..character_set.length-1)
      letters << character_set[index]
      character_set.delete_at(index)
    end
  end
end
