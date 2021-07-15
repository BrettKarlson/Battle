require 'player'

describe Player do
  subject(:matthew) { Player.new('Matthew') }

  describe '#name' do
    it 'returns the name' do
      expect(matthew.name).to eq 'Matthew'
    end
  end
end
