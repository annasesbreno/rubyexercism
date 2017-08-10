require 'pry'
require 'pry-byebug'
require 'awesome_print'

class ToyBot
  def initialize
    @commands = []
    @board = 
      [nil, nil, nil],
      [nil, nil, nil],
      [nil, nil, nil]
    read_commands
  end

  def read_commands
    File.open('commands.txt', 'r') do |file|
      file.each_line do |line|
        @commands.push line.chomp
      end
    end
  end

  def solve
    @commands.each do |command|
      # #=> 'PLACE 0,1,SOUTH'
      command_array = command.split ' '
      # #=> ['PLACE', '0,1,SOUTH']
      action = command_array[0]
      options = command_array[1]
      # #=> '0,1,SOUTH'
      # #=> nil
      # #=> '180,CCW'
      if action == 'PLACE'
        options = options.split ','
        x = options[0].to_i
        y = options[1].to_i
        direction  = options[2]
        place(x, y, direction)
      elsif action == 'MOVE'
        move
      elsif action == 'ROTATE'
        rotate(direction)
      end
    end
  end

  def place(x, y, direction)
    #x = x.to_i
    #y = y.to_i
    @board[y][x] = direction
  end

  def move
    x = bot_location[0]
    y = bot_location[1]
    direction = @board[y][x]
    @board[y][x] = nil
    if direction == 'SOUTH'
      x -= x
      @board[y][x] = direction
    elsif direction == 'WEST'
      y -= y 
      @board[y][x] = direction
    elsif direction == 'NORTH'
      y += y 
      @board[y][x] = direction
    elsif direction == 'EAST'
      x += x 
      @board[y][x] = direction
    end
    #binding.pry
  end

  def rotate(direction)
    return unless @board
    #Rotates 90 degrees to the left/counter-clockwise)
      if direction == 'CCW'
        y_index = (Directions.y_index(@board.direction) + 1 ) % Directions.count
        @board[y][x] = direction
    #Rotates 90 degrees to the left/clockwise)
      elsif direction == 'CW'
        x_index = (Directions.x_index(@board.direction) - 1) % Directions.count
        @board[y][x] = direction
      end
      binding.pry
    end

  def bot_location
    @board.each.with_index do |y, y_index|
      y.each.with_index do |x, x_index|
        if !x.nil?
          return [x_index, y_index]
        end
      end
    end
  end
end

toy_bot = ToyBot.new
toy_bot.solve