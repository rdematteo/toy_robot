module ToyRobot
  class Robot
    DIRECTIONS = ["NORTH", "EAST", "SOUTH", "WEST"]
    attr_reader :east, :north, :direction

    def initialize(east = 0, north = 0, direction = "NORTH")
      @east = east
      @north = north
      @direction = direction
    end

    def move_east
      @east += 1
    end

    def move_west
      @east -= 1
    end

    def move_north
      @north += 1    
    end

    def move_south
      @north -= 1
    end

    def move
      send("move_#{@direction.downcase}")
      # case @direction
      # when "NORTH" then move_north
      # when "SOUTH" then move_south
      # when "EAST" then move_east
      # when "WEST" then move_west
      # end
    end

    def turn_left
      turn(:left)
      # @direction = DIRECTIONS[DIRECTIONS.index(@direction)-1]
      # @direction = case @direction
      # when "NORTH" then "WEST"
      # when "SOUTH" then "EAST"
      # when "EAST" then "NORTH"
      # when "WEST" then "SOUTH"
      # end
    end

    def turn_right
      turn(:right)
      # index = DIRECTIONS.index(@direction)
      # @direction = DIRECTIONS.rotate(1)[index]
    end

    private

    def turn(turn_direction)
      index = DIRECTIONS.index(@direction)
      rotations = turn_direction == :right ? 1 : -1
      @direction = DIRECTIONS.rotate(rotations)[index]
    end

  end
end