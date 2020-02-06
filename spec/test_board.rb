require 'rspec'
require_relative '../lib/board.rb'

describe "Test Game_board class" do
  let(:run) { Game_board.new() } 
  context "on initialization" do
    it "return a 3 by 3 array" do
      expect(run.instance_variable_get(:@grid_key)).to eql ([['| 1 | ', '| 2 | ', '| 3 | '], ['| 4 | ', '| 5 | ', '| 6 | '], ['| 7 | ', '| 8 | ', '| 9 | ']]) 

      
    end
  end
  context "#convert_input" do
    let(:move_1) { "9" } 
    let(:move_2) { "5" }
    it "return an array [2,2] given a string number(9)" do
      expect(run.convert_input(move_1)).to eql ([2,2])
    end
    it "return an array [1,1] given a string number(5) not equals to array [2,2]" do
      expect(run.convert_input(move_2)).not_to eql ([2,2])
    end
    
  end
  
end
