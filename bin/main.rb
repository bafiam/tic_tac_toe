#!/usr/bin/ruby
require_relative '../lib/board.rb'

Players = Struct.new(:name, :mark)

puts "Welcome to the tic tac toe game\nPlayer 1: provide your name"
player1 = gets.chomp
puts "Player 2: provide your name"
player2 = gets.chomp
players = [Players.new(player1,"| X | "), Players.new(player2,"| O | ")]
puts "Welcome, #{players[0].name} and #{players[1].name}\n"
board = Game_board.new
const, turn = 1, 0
loop do
  board.display_grid
  puts "\n#{players[turn].name}, Enter a number between 1 and 9 to make your move"
  move = gets.chomp
  break if move == "-1"
  x, y = board.convert_input(move)
  board.modify_cell(x, y, players[turn].mark)
  turn  += const
  const *= -1
end
