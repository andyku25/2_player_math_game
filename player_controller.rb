class Player
  attr_accessor :lives_remaining
  attr_reader :name

  LIVES = 3

  def initialize(n)
    @lives_remaining = LIVES
    @name = n
  end

  def answer_wrong
    @lives_remaining -= 1
  end
end