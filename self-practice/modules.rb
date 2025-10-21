# --- Modules (Reusable Code) ---

module Special_message
  def sub_boy_res
    puts "Wassup Boi! –– This is a message coming from a Module"
  end
end

class Robot
  attr_accessor :name, :age
  
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def greetings
    puts "Hello, I'm #{@name} and I am #{@age} years old"
  end
  
  include Special_message
end

robo_boy = Robot.new("RoboBoy", 10)
robo_boy.greetings
robo_boy.sub_boy_res