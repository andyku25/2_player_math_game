require "./player_controller"
require "./game_controller"
require "./question_controller"


puts "Welcome to the heads up math contest!"
puts "Please enter Player 1 name: "
p1_name = gets.chomp()
puts "Please enter Player 2 name: "
p2_name = gets.chomp()

p1 = Player.new(p1_name)
p2 = Player.new(p2_name)

puts "#{p1.name} Vs. #{p2.name}"

game = Game.new(p1, p2)

game.loop_questions