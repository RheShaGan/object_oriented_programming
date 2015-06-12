class Rover
	attr_reader :x, :y, :direction

	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
  end

  # def set_initial_position
  #   print "Please enter Rover's initial position e.g 2 1 N >"
  #   position = gets.chomp
  #   position_array = position.split(" ")

  #   x = position_array[0].to_i

  #   y = position_array[1].to_i

  #   direction = position_array[2].to_sym

  #   puts "<Rover: #{x},#{y} facing #{direction}>"
    
  # end

  #def print_rover_position(x, y, direction)
    #rover = Rover.new(x, y, direction)
    #puts "<Rover: #{x},#{y} facing #{direction}>"
  #end

  def move
    if @direction == :N
     @y += 1
    elsif @direction == :E
      @x += 1
    elsif @direction == :S
      @y -= 1
    else @direction == :W
      @x -= 1
    end
  end

  def turn(l_or_r)
    dir_array = [:N, :E, :S, :W]
 
    direction_index = dir_array.index(@direction)

    if l_or_r == :L
      if direction_index > 0
        direction_index -= 1
      else direction_index == 0
        direction_index = 3
      end

    elsif l_or_r == :R
      if direction_index < 3
        direction_index += 1
      else direction_index == 3
        direction_index =0
      end
    end

    @direction = dir_array[direction_index]
  end

	def read_instruction(instr)
    if instr == :M
      move
    else instr == :L || instr == :R
      turn(instr)
    end
  end

  def to_s
    "<Rover: #{x},#{y} facing #{direction}>"
  end

end

print "Please enter Rover's initial position e.g 2 1 N >"
    position = gets.chomp
    position_array = position.split(" ")

    x = position_array[0].to_i

    y = position_array[1].to_i

    direction = position_array[2].to_sym

    puts "<Rover: #{x},#{y} facing #{direction}>"

r = Rover.new(x,y,direction)

puts "Please enter movement direction: "

user_input = gets.chomp

user_array = user_input.split("")

user_array.each do | letter |
  r.read_instruction(letter.to_sym)
end

puts r.to_s

