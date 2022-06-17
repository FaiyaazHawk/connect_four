<<<<<<< HEAD
# frozen_string_literal: true

<<<<<<< HEAD
require_relative '../game'

describe Game do
  describe 'check_input' do
    context 'it makes sure input it between 0-6' do
      it 'returns true with 4' do
        input_check = Game.new
        result = input_check.check_input('4')
        expect(result).to eq(true)
      end
=======
require_relative '../game.rb'

describe Game do
<<<<<<< HEAD
  describe 'check_input' do
    subject(:input_check) { described_class.new }
  end
end
=======
    describe 'check_input' do
        context 'it makes sure input it between 0-6' do
            it 'returns true with 4' do
                input_check = Game.new
                result = input_check.check_input('4')
                expect(result).to eq(true)
            end
>>>>>>> d30099bf71b0b545fd1291116a4fc08d65d68e72

      it 'returns false with 9' do
        input_check = Game.new
        result = input_check.check_input('9')
        expect(result).to eq(false)
      end

      it 'returns false with k' do
        input_check = Game.new
        result = input_check.check_input('k')
        expect(result).to eq(false)
      end
    end
  end

  describe 'player_turn' do
    context 'changes player currently playing based on turn count' do
      subject(:turn_check) { described_class.new }
      it 'returns player 1' do
        result = turn_check.player_turn
        expect(result).to eq(turn_check.player_1)
      end
    end
<<<<<<< HEAD
    context 'returns player 2 when 1 turn is done' do
      subject(:turn_check) { described_class.new }
      before do
        turn_check.instance_variable_set(:@turn, 1)
      end
      it 'returns player 2' do
        result = turn_check.player_turn
        expect(result).to eq(turn_check.player_2)
      end
    end
  end
end
=======

    
end
>>>>>>> 744e85f3f79d1d02423f836024531eeea3b86c24
>>>>>>> d30099bf71b0b545fd1291116a4fc08d65d68e72
=======
require_relative '../game.rb'

describe Game do
    describe 'check_input' do
        subject(:input_check) {described_class.new}
    end

    
end
>>>>>>> parent of 4090b12 (rubocop pass)
