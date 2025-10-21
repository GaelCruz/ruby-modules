# --- Define a Class ---

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def greet
    "Hi, I'm #{@name}, and I'm #{@age} years old."
  end
end

gael = Person.new("Gael", 22)
puts gael.greet