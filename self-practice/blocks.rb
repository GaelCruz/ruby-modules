
# --- Basic example of a block ---
# def greet
#   puts "Hello!"
#   yield if block_given?
#   puts "Goodbye"
# end

#greet {puts "Nice to meet you!"} # uncomment this line to run greet


# --- Using blocks with iteration ---

# [1,2,3].each do |num|
#   puts num * 2
# end

# ["Gael", "Naythen", "Anthony"].each do |name|
#   puts name
# end

# [1,2,3].map { |num| num * 2} # => [2,4,6]\


# Custom methods with yeild

# def repeat(num)
#   num.times {yield} # executes the block 'num' times 
# end

# repeat(3) {puts "ruby rocks! #{rand(1000)}"}
# 

# --- Turning a Block into an Object - Procs ---
# say_hello = Proc.new {puts "hello!"}
# say_hello.call # => "hello!"


# --- Passing a Proc into a Method
# def preform_task(task)
#   puts "Starting task..."
#   task.call
#   puts "Task finished"
# end

# reminder = Proc.new {puts "Remember to commit your code!"}

# preform_task(reminder)

# def run_twice(&block)
#   block.call
#   block.call
# end

# run_twice {puts "...Running"}


# --- Lambdas –– Special Procs
# a lmbda is almost the same as a Proc, but with two big differences
# Argument Checking - Requires Exact args
# Return Behavior - Retruns from its self only
# 

# proc_example = Proc.new {|x, y|  puts "x=#{x}, y=#{y}"}
# proc_example.call(10) # => x=10, y=

# lambda_example = ->(x,y) {puts "x=#{x}, y=#{y}"}
# lambda_example.call(10) # => ArumentError
# 
#