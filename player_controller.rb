class Player
  def initialize
    @lives_remaining = 3
  end

  def answer_wrong
    @lives_remaining -= 1
  end
end

p1 = Player.new
puts p1