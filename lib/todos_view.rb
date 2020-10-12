class TodosViews
  def index(todos) 
    puts
    todos.each do |todo|
      puts "#{todo.id}. #{todo.name}"
    end 
  end

  def completed(todo)
    puts todo.done ? "Completed" : "Not Completed"
  end

  def completed_input
    puts
    puts "What todo would you like to check?"
    input
  end

  def input
    print "> " 
    gets.chomp
  end
  
  def menu 
    puts
    puts "Welcome to the todos app!"
    puts "--------------------------"
    puts "Make your selection"
    puts "1. View all todos"
    puts "2. Is the todo done?"
    puts "3. Exit"
  end

  def handle_input_error
    puts "Input error!"
    puts "Please enter a 1, 2 or 3"
  end
end