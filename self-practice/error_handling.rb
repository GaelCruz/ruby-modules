
def example_function
  begin
    result = 10/0
  rescue ZeroDivisionError => e
    puts "Error: #{e.message}"
  ensure
    puts "this always runs"
  end
end

example_function