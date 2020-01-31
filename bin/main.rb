#!/usr/bin/ruby
require_relative '../lib/board.rb'

Players = Struct.new(:name, :mark)

puts "Welcome to the tic tac toe game\nPlayer 1: provide your name"
player1 = gets.chomp
puts "Player 2: provide your name"
player2 = gets.chomp
player_1 = Players.new(player1,"| X | ")
player_2 = Players.new(player2,"| O | ")
players = [player_1, player_2]
puts "Welcome, #{player_1.name} and #{player_2.name}"
puts ''
play = Game_board.new
const = 1
turn = 0
loop do
  play.display_grid
  puts ""
  puts "#{players[turn].name},Enter move between 1 and 9 :"
  move = gets.chomp
  break if move == "-1"
  x, y = play.convert_input(move)
  play.modify_cell(x, y, players[turn].mark)
  turn  += const
  const *= -1
end
