# frozen_string_literal: true

require_relative '../player'

describe Player do
  player = Player.new('Boyo', 'B')
  context 'create new player init name and symbol' do
    it 'returns player name' do
      expect(player.name).to eq('Boyo')
    end
  end

  it 'returns player symbol' do
    expect(player.symbol).to eq('B')
  end
end
