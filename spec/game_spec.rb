require_relative '../game.rb'

describe Game do
    describe 'check_input' do
        context 'it makes sure input it between 0-6' do
            it 'returns true with 4' do
                input_check = Game.new
                result = input_check.check_input('4')
                expect(result).to eq(true)
            end

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

    

    
end