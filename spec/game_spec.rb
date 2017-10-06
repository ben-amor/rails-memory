require 'rails_helper'

describe Game do

  subject(:game){described_class.new}

  context 'when initialized' do
    it 'has a randomized set of letters' do
      expect(game.letters).not_to eq('aaaabbbbccccddddeeee') #TODO poor test but it's a test of randomization so more or less destined to be
    end
  end

  context 'when a correct guess is made' do
    it 'removes the letters at the indexes guessed' do
      game.letters = 'ababcc'
      game.guess(1,3)
      expect(game.letters).to eq('*b*bcc')
    end
  end
end
