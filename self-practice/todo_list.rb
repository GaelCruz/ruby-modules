todos = []

loop do
  puts "\n--- Todo List ---"
  puts "1. Add Task"
  puts "2. View Tasks"
  puts "3. Remove Task"
  puts "4. Exit"

  print "Choose an option: "
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter Task: "
    task = gets.chomp
    todos << task
    puts "Added: #{task} to your todo list"
  when 2
    puts "\nYour tasks:"
    todos.each_with_index {|task, i| puts "#{i+1}. #{task}"}
  when 3
    puts "\nPick the which task you want to delete."
    todos.each_with_index {|task, i| puts "#{i+1}. #{task}"}
    print "Task# "
    deleted_task = gets.chomp.to_i - 1
    if todos[deleted_task]
      puts "Removed: #{todos.delete_at(deleted_task)}"
    else
      puts "Invalid task"
    end
  when 4
    puts "--- Ending Session ---"
    break
  end
end