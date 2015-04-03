class Rover

  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction        #We save numbers into these instance variables by using the my_rover call below
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
# ----------------------------
class Plateau

  def initialize (length, width)
    @length = length
    @width = width
    @rover_list = []      # => Going to create an array of the rover locations
  end

    def new_rover(x, y, direction)
      if x > @width or x < 0 || y > @length or y < 0
        puts "Please make sure to place the rover on the Plateau."
      else
        add_rover = Rover.new(x, y, direction)
        @rover_list << add_rover        # => Shovel the new rover into the rover_list array to be accessed later
      end
    end
    def move_rover
      puts "Please enter commands to move the rover. L = turn left, R = turn right, M = move forward (syntax e.g. /'RMMMMLMLM'/)."
      movement = gets.chomp
      @rover_list[].read_instructions(movement)
    end

    def to_s
    "The dimensions of the grid are: #{@width} units high by #{@length} units wide. #{@rover_list.collect{|x| x}}"
    end
end




plateau = Plateau.new(9,9)

plateau.new_rover(1, 1, "E")
plateau.new_rover(2, 2, "N")
puts plateau