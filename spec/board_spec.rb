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

    describe '#update_board' do
        subject(:u_board) {described_class.new}
        context 'it takes row and column and updates with symbol' do
            it 'updates position row 2 and column 2 with T' do
                u_board.update_board(2,2,'T')
                updated_position = u_board.grid[2][2]
                expect(updated_position).to eq('T')
            end
        end
    end

    describe 'find_row' do
        subject(:find_board) {described_class.new}
        context 'it finds the lowest available row in grid for given column' do
            it 'returns 5 when input is 1 on new grid' do
                row = find_board.find_row(1)
                expect(row).to eq(5)
            end
        end

        context 'it gives lowest available row when value in column' do
            it 'return 4 when input is 1 on updated grid' do
                find_board.update_board(0,1,'T')
                row = find_board.find_row(1)
                expect(row).to eq(4)
            end
        end
    end
end