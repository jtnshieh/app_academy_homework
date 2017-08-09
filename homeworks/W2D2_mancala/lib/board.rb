class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones

  end

  def valid_move?(start_pos)

  end

  def make_move(start_pos, current_player_name)

  end

  def render

  end

  def one_side_empty?

  end

  def winner

  end

end
