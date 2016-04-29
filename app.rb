@position = []

# function to place the robot at desired position
def place(x,y,f)
  @position = [x,y,f.upcase]
  puts "robot placed at #{@position.join(",")}"
  return @position
end

def check_position()
  if @position[0] < 0 ||  @position[1] < 0
    puts "Operation Aborted. Please move in different direction!"
    index = @position.index(-1)
    @position[index] = 0
  elsif @position[0] > 5 ||  @position[1] > 5
    puts "Operation Aborted. Please move in different direction!"
    index = @position.index(6)
    @position[index] = 5
  end
  return @position
end

# function to move the robot on table
def move

  if @position != []
    if @position[2] == "EAST"
        @position[0] += 1
    elsif @position[2] == "WEST"
        @position[0] -= 1
    elsif @position[2] == "NORTH"
        @position[1] += 1
    elsif @position[2] == "SOUTH"
        @position[1] -= 1
    end
    check_position()
  else
    puts "Invalid Command!!.\nPlease execute command (place) to place the robot on the table."
  end
  @position
end

# function to move the robot to left
def left
  if @position != []
    if @position[2] == "EAST"
      @position[2] = "NORTH"
    elsif @position[2] == "WEST"
      @position[2] = "SOUTH"
    elsif @position[2] == "NORTH"
      @position[2] = "WEST"
    elsif @position[2] == "SOUTH"
      @position[2] = "EAST"
    end
  else
    puts "Invalid Command!!.\nPlease execute command (place) to place the robot on the table."
  end
  return @position
end

# function to move the robot to right
def right
  if @position != []
    if @position[2] == "EAST"
      @position[2] = "SOUTH"
    elsif @position[2] == "WEST"
      @position[2] = "NORTH"
    elsif @position[2] == "NORTH"
      @position[2] = "EAST"
    elsif @position[2] == "SOUTH"
      @position[2] = "WEST"
    end
  else
    puts "Invalid Command!!.\nPlease execute command (place) to place the robot on the table."
  end
  return @position
end

# function to print the position of robot
def report
  puts @position.join(",")
  return @position
end
