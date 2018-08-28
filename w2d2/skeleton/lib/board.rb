class Board
  attr_accessor :cups

  def initialize(name1, name2)
    place_stones
  end

  def place_stones
    @cups = Array.new(14) {Array.new(4, :stone)}
    @cups[6] = []
    @cups[13] = []
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 12
      raise "Invalid starting cup"
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    hand = @cups[start_pos].dup
    @cups[start_pos] = []
    new_pos = start_pos + 1

    until hand.empty?
      new_pos += 1 if (current_player_name == "James") && (new_pos == 7)
      new_pos = 0 if (current_player_name == "Erica") && (new_pos == 13)
      new_pos = 1 if new_pos == 13
      @cups[new_pos] << :stone
      hand.shift
      new_pos += 1
    end
    next_turn(new_pos)


    p new_pos
    if @cups[new_pos].count == 1
      return :switch
    elsif new_pos == 6 || new_pos == 13
      return :prompt
    else
      return new_pos - 1
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..5].all? {|cup| cup.empty?}
    return true if @cups[7..12].all? {|cup| cup.empty?}
    false


  end

  def winner
    if @cups[6] == @cups[13]
      return :draw
    else
      return "Erica"
    end

  end
end
