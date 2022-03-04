require_relative "../board.rb"

describe Board do
    context 'it creates a grid 7 col wide by 6 rows tall' do
        it "is 7 columns wide" do
            board = Board.new
            expect(board.grid[0].length).to eq(7) 
        end

        it 'is 6 rows tall' do
            board = Board.new
            expect(board.grid.length).to eq(6)
        end
    end
end