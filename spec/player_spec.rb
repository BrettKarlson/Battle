# frozen_string_literal: true

require 'player'

describe Player do
  subject(:matthew) { Player.new('Matthew') }

  describe '#name' do
    it 'returns the name' do
      expect(matthew.name).to eq 'Matthew'
    end
  end
end

describe Player do
  subject(:matthew) { Player.new('Matthew') }
  subject(:richard) { Player.new('Richard') }

  describe '#name' do
    it 'returns the name' do
      expect(matthew.name).to eq 'Matthew'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(matthew.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { matthew.receive_damage }.to change { matthew.hit_points }.by(-10)
    end
  end
end
