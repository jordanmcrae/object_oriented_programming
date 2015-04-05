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

class Plateau
  attr_accessor :x_dim, :y_dim

  def initialize
    @x_dim = x_dim
    @y_dim = y_dim
    @new_grid = []
    @start_coord = []
  end

  def grid_size
    puts "Please input the width of the grid (min. 1, max 9)."
    x_dim = gets.chomp.to_i
    if x_dim >= 10 or x_dim <= 0
      puts "Please select dimensions that are less than ten and greater than zero."
    else
      @new_grid << x_dim
      puts "Width of the grid has been set to #{x_dim}."
    end

    puts "Please input the height of the grid (min. 1, max 9)."
    y_dim = gets.chomp.to_i
    if y_dim >= 10 or y_dim <= 0
      puts "Please select dimensions that are less than ten and greater than zero."
    else
      @new_grid << y_dim
      puts "Height of the grid has been set to #{y_dim}."
    end
  end

  def add_a_rover
    puts "Please select a starting x-coordinate for the first rover."
    start_x = gets.chomp.to_i
      @start_coord << start_x
      puts "The rover's x-coordinate has been set to #{start_x}."

    puts "Please select a starting y-coordinate for the first rover."
    start_y = gets.chomp.to_i
      @start_coord << start_y
      puts "The rover's y-coordinate has been set to #{start_y}."

    puts "Please select a starting direction using N for North, S for South, E for East, and W for West."
    user_direction = gets.chomp.upcase.to_s
    if user_direction != "N" or user_direction != "S" or user_direction != "E" or user_direction != "W"
      puts "Error. Unknown direction command."
    else
      @start_coord << user_direction
      puts "The direction of the new rover has been set to: #{user_direction}."
    end
    puts
    "A new rover has been successfully created."
  end

  def move_rover
    puts
end

plat = Plateau.new

puts plat.grid_size

puts plat.add_a_rover

puts plat





