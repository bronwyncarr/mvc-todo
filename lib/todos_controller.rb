class TodosController
  def initialize
    @views = TodosView.new
  end

  # display all items/resources/things
  def index
    todos = Todos.all
    @views.index(todos)
  end

  def completed
    id = @views.completed_input.to_i
    todos = Todos.all
    todo = todos.find do |item|
      id == item.id
    end
    @views.completed(todo)
  end

  def input_error
    @views.handle_input_error
  end
  
  def run
    loop do
      @views.menu   
      routes(@views.input)
    end
  end
  
  def routes(input)
    if input == '1'
      index
    elsif input == '2'
      completed
    elsif input == '3'
      exit
    else
      input_error
    end
  end
end
