class TodosView
  def index(todos)
    todos.each do |item|
      puts "#{item.id}) #{item.name}"
    end
  end

  def completed_input
    puts "What todo would you like to check?"
    input
  end

  def completed_input(todo)
    puts todo.done ? "Completed" : "Not completed"
  end

  def input
    print "> "
    gets.chomp
  end

  def menu
    puts "Welcome to the todos app!"
    puts "Make your selection"
    puts "1. View all todos"
    puts "2. Is it done?"
    puts "3. Exit"
  end



  def handle_input_error
    puts "you need to enter a 1 or 2."
  end
end