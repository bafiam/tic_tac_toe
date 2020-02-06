require_relative '../lib/game_logic.rb'
require_relative '../lib/board.rb'
RSpec.describe Logic do
	let(:logic) { Logic.new }
	let(:board) { Game_board.new }
	let(:grid)  { board.grid_key }
	let(:value) { ['| X | ', '| X | ', '| O | '] }
	let(:grid_value) { [[:value, :value, :value]] }
	describe '#check_win' do
		context 'checks wins and lose' do
			it 'X wins diag' do
				value = ["| X | ", "| X | ", "| X | "]
				expect(logic.anti_diag("| X | ", board)).to eq 3
			end
		  3.times do |x|
				it 'X winsm rows and cols' do
					board.grid_key = [["| X | ", "| X | ", "| X | "], ["| X | ", "| X | ", "| X | "], ["| X | ", "| X | ", "| X | "]]
					expect(logic.row(x, "| X | ", board)).to eq 3
					expect(logic.col(x, "| X | ", board)).to eq 3
				end
				it 'O win' do
					board.grid_key = [["| O | ", "| O | ", "| O | "], ["| O | ", "| O | ", "| O | "], ["| O | ", "| O | ", "| O | "]]
					expect(logic.row(x, "| O | ", board)).to eq 3
				end
				it 'X does not win row' do
			  	expect(logic.row(0, "| X | ", board)).to eq 0
				end
				it 'O does not win rows' do
			  	expect(logic.row(0, "| O | ", board)).to eq 0
				end
			end
		end
	end
end
