require 'spec_helper'

describe GameHelper do
  context 'creating a hint' do
    it 'indicates which characters have not been revealed' do
      expect(helper.get_clue('a*a*cc')).to eq('?*?*??')
    end
  end
end
