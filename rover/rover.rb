class Rover

  attr_accessor :initial_x, :initial_y, :initial_direction

  def initialize(initial_x, initial_y, initial_direction)
    @x = initial_x
    @y = initial_y
    @direction = initial_direction        #We save numbers into these instance variables by using the my_rover call below
  end

  def read_instructions(user_input)
    user_input.split("").each do |input|
      case input
        when "M"
          move_forward
        when "L"
          turn_left
        when "R"
         turn_right
      end
    end
  end

  def turn_left
    if @direction == "N"
      @direction == "W"
    elsif @direction == "W"
      @direction == "S"
    elsif @direction == "S"
      @direction == "E"
    elsif @direction == "E"
      @direction == "N"
    end
  end

  def move_forward
    if @direction == "N"
      @y += 1
    elsif @direction == "E"
      @x += 1
    elsif @direction == "S"
      @y -= 1
    elsif @direction == "W"
      @x -= 1
    end
  end

  def turn_right
    if @direction == "N"
      @direction == "E"
    elsif @direction == "E"
      @direction == "S"
    elsif @direction == "S"
      @direction == "W"
    end
  end

  def to_s  #Reaches into state, pulls it out, and formats it into a nice string for printing. Allows us to do puts for my_rover.
    "I am at #{@x}, #{@y}, facing #{@direction}."
  end
end

rover = Rover.new(1,2,"N")

puts rover