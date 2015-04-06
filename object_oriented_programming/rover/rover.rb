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
    "I am at #{@x}, #{@y}, facing #{@direction}. "
  end
end

class Grid
  attr_accessor :x_grid, :y_grid

  def initialize(x_grid, y_grid)
    @x_grid = x_grid
    @y_grid = y_grid
  end

  def user_input
    puts "Please input the width of the grid (min. 1, max 9)."
    @x_grid = gets.chomp.to_i
    puts "Please input the height of the grid (min. 1, max 9)."
    @y_grid = gets.chomp.to_i
  end

  def add_rover

    puts "Please select a starting x-coordinate for the first rover."
    start_x = gets.chomp.to_i
    if start_x > @x_grid or start_x < 0
        puts "Error. You cannot place the rover outside of the grid."
    else
      puts "The rover's x-coordinate has been set to #{start_x}."
    end

    puts "Please select a starting y-coordinate for the first rover."
    start_y = gets.chomp.to_i
    if start_y > @y_grid or start_y < 0
        puts "Error. You cannot place the rover outside of the grid."
    else
      puts "The rover's y-coordinate has been set to #{start_y}."
    end

    puts "Please select a starting direction using N for North, S for South, E for East, and W for West."
    user_direction = gets.chomp.upcase.to_s

    puts "The direction of the new rover has been set to: #{user_direction}."
    puts "A new rover has been successfully created."

    @rover_1 = Rover.new(start_x, start_y, user_direction)
    puts "Please input movement instructions. M = Move Forward, L = Turn Left, R = Turn Right (eg. MMRMMLM)"
    input = gets.chomp.upcase
    @rover_1.read_instructions(input)

    puts "The rover is now located at: #{@rover_1}."
  end
end

rover_1 = Grid.new(9,9)
puts rover_1.add_rover