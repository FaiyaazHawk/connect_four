<<<<<<< HEAD
# frozen_string_literal: true

<<<<<<< HEAD
require_relative '../player'
=======
require_relative '../player.rb'
>>>>>>> d30099bf71b0b545fd1291116a4fc08d65d68e72
=======
require_relative "../player.rb"
>>>>>>> parent of 4090b12 (rubocop pass)

describe Player do
    player = Player.new('Boyo', 'B')
    context "create new player init name and symbol" do
    it 'returns player name' do
        expect(player.name).to eq('Boyo')
        end
    end

    it 'returns player symbol' do
        expect(player.symbol).to eq('B')
    end
end