class Player
  attr_accessor :lives_remaining
  attr_reader :name
  def initialize(n)
    @lives_remaining = 3
    @name = n
  end

  def answer_wrong
    @lives_remaining -= 1
  end
end

# p1 = Player.new("P1")

# p2 = Player.new("P2")

# puts p1.name
# puts p2.name

# puts "#{p1.name} has #{p1.lives_remaining} life remaining"
# puts "#{p2.name} has #{p2.lives_remaining} life remaining"
# puts p1.answer_wrong

# puts "#{p1.name} has #{p1.lives_remaining} life remaining"
# puts "#{p2.name} has #{p2.lives_remaining} life remaining"