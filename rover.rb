class Rover
	attr_reader :x, :y, :direction

  # def x=(val)
  #   @x = val
  # end

  # def x
  #   @val
  # end

	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

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

  # def set_xy(x, y)
  #   # @x, @y = x, y
  #   @x = x
  #   @y = y
  # end

  # def xy=(array)
  #   # @x, @y = x, y
  #   @x, @y = array
  #   a,b,c = [1,2,3]
  #   x, y = [y, x]
  # end

  def to_s
    "<Rover: #{x},#{y} facing #{direction}>"
  end

end

r = Rover.new(1,1,:N)

puts "Please enter movement direction: "

user_input = gets.chomp

user_array = user_input.split("")

user_array.each do | letter |
  r.read_instruction(letter.to_sym)
end

puts r
# r.read_instruction(:M)
# r.read_instruction(:L)
# r.read_instruction(:M)
# r.read_instruction(:L)

# r.x = 5
# r.y = 10
# r.set_xy(5,10)
# r.xy = [5, 10]
