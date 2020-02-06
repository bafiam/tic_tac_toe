require_relative '../lib/game_logic.rb'
require_relative '../lib/board.rb'

RSpec.describe Logic do
	let(:logic) { Logic.new }
	let(:board) { Game_board.new }
	let(:grid)  { board.grid_key }
	describe '#row' do
		context "row 1" do
			
			it "X win" do
				board.grid_key = [["| X | ", "| X | ", "| X | "]]
				expect(logic.row(0, "| X | ", board)).to eq 3
			end
			it "O win" do
				board.grid_key = [["| O | ", "| O | ", "| O | "]]
				expect(logic.row(0, "| O | ", board)).to eq 3
			end
			before do
			  board.grid_key = [["| X | ", "| O | ", "| O | "]]
			end
			it "X does not win row" do
			  expect(logic.row(0, "| X | ", board)).to eq 0
			end
			it "O does not win row" do
			  expect(logic.row(0, "| O | ", board)).to eq 0
			end

		end
	end
end

