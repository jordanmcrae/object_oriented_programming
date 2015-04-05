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

class Plateau < Rover
  attr_accessor :x_dim, :y_dim, :new_grid, :start_coord, :start_coord2

  def initialize
    @x_dim = x_dim
    @y_dim = y_dim
    @new_grid = []
    @@start_coord = []
    @@start_coord2 = []
  end

  def grid_size
    puts "Please input the width of the grid (min. 1, max 9)."
    @@x_dim = gets.chomp.to_i
    if @@x_dim >= 10 or @@x_dim <= 0
      puts "Please select dimensions that are less than ten and greater than zero."
    else
      @new_grid << @@x_dim
      puts "Width of the grid has been set to #{@@x_dim}."
    end

    puts "Please input the height of the grid (min. 1, max 9)."
    @@y_dim = gets.chomp.to_i
    if @@y_dim >= 10 or @@y_dim <= 0
      puts "Please select dimensions that are less than ten and greater than zero."
    else
      @new_grid << @@y_dim
      puts "Height of the grid has been set to #{@@y_dim}."
    end
  end

  def add_a_rover

    puts "Please select a starting x-coordinate for the first rover."
    start_x = gets.chomp.to_i
    if start_x > @@x_dim or start_x < 0
        puts "Error. You cannot place the rover outside of the grid."
    else
      @@start_coord << start_x
      puts "The rover's x-coordinate has been set to #{start_x}."
    end

    puts "Please select a starting y-coordinate for the first rover."
    start_y = gets.chomp.to_i
    if start_y > @@y_dim or start_y < 0
        puts "Error. You cannot place the rover outside of the grid."
    else
      @@start_coord << start_y
      puts "The rover's y-coordinate has been set to #{start_y}."
    end

    puts "Please select a starting direction using N for North, S for South, E for East, and W for West."
    user_direction = gets.chomp.upcase.to_s
    @@start_coord << user_direction
    puts "The direction of the new rover has been set to: #{user_direction}."

    puts
    "A new rover has been successfully created."
  end

  def additional_rover

    puts "Please select a starting x-coordinate for the next rover."
    start_x = gets.chomp.to_i

    if start_x > @@x_dim or start_x < 0
        puts "Error. You cannot place the rover outside of the grid."
    else
      @@start_coord2 << start_x
      puts "The rover's x-coordinate has been set to #{start_x}."
    end

    puts "Please select a starting y-coordinate for the next rover."
    start_y = gets.chomp.to_i

    if start_y > @@y_dim or start_y < 0
        puts "Error. You cannot place the rover outside of the grid."
    else
      @@start_coord2 << start_y
      puts "The rover's y-coordinate has been set to #{start_y}."
    end

    puts "Please select a starting direction using N for North, S for South, E for East, and W for West."
    user_direction = gets.chomp.upcase.to_s
    @@start_coord2 << user_direction
    puts "The direction of the new rover has been set to: #{user_direction}."

    puts
    "A new rover has been successfully created."
  end

  def move
    puts "Please select a rover by typing 1 for rover 1 which is located at #{@@start_coord} or 2 for rover 2 which is located at #{@@start_coord2}."
    rover_select = gets.chomp.to_i

    if rover_select == 1
      puts "The first rover has been selected for movement."
      puts "Please input commands to move the rover by typing M for move forward, L for turn left, and R for turn right. (E.g. MMMRMMLM)."
      command_prompt = gets.chomp.
      @@start_coord.read_instructions(command_prompt)
      puts "The rover is now located at #{@@start_coord}"
    elsif rover_select == 2
        puts "The second rover has been selected for movement."
        puts "Please input commands to move the rover by typing M for move forward, L for turn left, and R for turn right. (E.g. MMMRMMLM)."
        command_prompt = gets.chomp
        @@start_coord2.read_instructions(command_prompt)
        puts "The rover is now located at #{@@start_coord2}"
    else
        puts "You have not selected a valid rover."
    end
  end


  def to_s
    "The rovers are located at: #{@start_coord.map{|a| a.to_s}} and #{@start_coord2.map{|b| b.to_s}}."
  end

  def instance_check
    puts "new_grid = #{@new_grid}, start_coord = #{@@start_coord}, start_coord2 = #{@@start_coord2}"
  end
end

plat = Plateau.new

puts plat.grid_size

puts plat.add_a_rover

puts plat.additional_rover

puts plat.move







