# frozen_string_literal: true

require_relative '../lib/game_logic.rb'
require_relative '../lib/board.rb'
RSpec.describe Logic do
  let(:logic) { Logic.new }
  let(:board) { Game_board.new }
  let(:value) { ['| X | ', '| X | ', '| O | '] }
  describe '#check_win' do
    context 'checks wins rows and cols' do
      before do
        value = ['| X | ', '| X | ', '| X | ']
        board.grid_key = [value, value, value]
      end
      3.times do |x|
        it 'X wins rows and cols' do
          expect(logic.row(x, '| X | ', board)).to eq 3
          expect(logic.col(x, '| X | ', board)).to eq 3
        end
        it 'O wins rows and cols' do
          value = ['| O | ', '| O | ', '| O | ']
          board.grid_key = [value, value, value]
          expect(logic.row(x, '| O | ', board)).to eq 3
          expect(logic.col(x, '| O | ', board)).to eq 3
        end
      end
    end
    context 'checks loses rows and cols' do
      before do
        value = ['| X | ', '| X | ', '| O | ']
        board.grid_key = [value, value, ['| O | ', '| O | ', '| X | ']]
      end
      3.times do |x|
        it 'X does not win row' do
          expect(logic.row(x, '| X | ', board)).to eq 0
          expect(logic.col(x, '| X | ', board)).to eq 0

        end
        it 'O does not win rows' do
          expect(logic.row(x, '| O | ', board)).to eq 0
          expect(logic.col(x, '| O | ', board)).to eq 0
        end
      end
    end
  end
  context 'checks wins diag and anti_diag' do
    it 'X wins diag' do
      value = ['| X | ', '| X | ', '| X | ']
      board.grid_key = [value, value, value]
      expect(logic.diag('| X | ', board, 0)).to eq 3
      expect(logic.anti_diag('| X | ', board)).to eq 3
    end
    it 'O wins diag' do
      value = ['| O | ', '| O | ', '| O | ']
      board.grid_key = [value, value, value]
      expect(logic.diag('| O | ', board, 0)).to eq 3
      expect(logic.anti_diag('| O | ', board)).to eq 3
    end
    it 'O and X loses diag' do
      value = ['| X | ', '| O | ', '| X | ']
      board.grid_key = [value, value, value]
      expect(logic.diag('| O | ', board, 0)).to eq 0
      expect(logic.anti_diag('| O | ', board)).to eq 0
      expect(logic.diag('| X | ', board, 0)).to eq 0
      expect(logic.anti_diag('| X | ', board)).to eq 0
    end    
  end
  describe '#manage_input' do
    context 'checks if input is correct or incorrect' do
      9.times do |x|
        it 'input from 1 - 9 is correct' do
          expect(logic.manage_input((x + 1).to_s)).to eq 1
        end
        it 'input from -1 to -9 is incorrect' do
          expect(logic.manage_input(((x + 1) * -1).to_s)).not_to eq 1
        end
      end
      var = '1'
      4.times do |x|
        var += x.to_s
        it 'check if input greater than 1 is incorrect (from 2 - 6)' do
          expect(logic.manage_input(var)).not_to eq 1
        end
      end
    end
  end
end
