`# frozen_string_literal: true`.
#!/usr/bin/ruby
require_relative '../lib/board.rb'
require_relative '../lib/game_logic.rb'

Players = Struct.new(:name, :mark)

def display_grid(grid)
   grid.each {|rows| (rows.each { |x| print x }); puts "" }
end

game_over = 0
logic = Logic.new
puts "Welcome to the tic tac toe game\nPlayer 1: provide your name"
player1 = gets.chomp
if player1.length == 0
  player1 = "player 1"
end
puts "Player 2: provide your name "
player2 = gets.chomp
if player2.length == 0
  player2 = "player 2"
end
players = [Players.new(player1,"| X | "), Players.new(player2,"| O | ")]
puts "Welcome, #{players[0].name} and #{players[1].name}\n"
board = Game_board.new
const, turn = 1, 0
x, y = -1, -1
loop do
  display_grid(board.grid_key)
  puts "\n#{players[turn].name}, Enter a number between 1 and 9 to make your move"
  move = gets.chomp
  break if move == "-5"
  unless logic.manage_input(move) == -1
    x, y = board.convert_input(move)
    unless logic.pos_empty(board.grid_key[y][x]) == -1
      board.grid_key[y][x] = players[turn].mark
      game_over = logic.game_end(x, y, players[turn].mark, board)

      if game_over != 0
        display_grid(board.grid_key)
        game_over == 2 ? (puts "It's a TIE!") : (puts "\n#{players[turn].name} is the winner!")
        puts "Do you want to countinue playing....? Enter 'y' for YES or 'n' for NO"
        counti = gets.chomp
        if counti == 'n'
          break
        elsif counti == 'y'
          board = Game_board.new
          logic = Logic.new
        else
          puts "Wrong input, BYE!!!!!!!!!!!!"
          break
        end
      end
     
      turn  += const
      const *= -1
    else
      puts "Position is taken."
    end
  else
    puts "Number must be between 1 and 9 "
  end
end
