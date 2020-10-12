class Todos
  # positional argument, access through hash
  # def initialize(todos)
  #   @id = todos[:id]
  #   @name = todos[:name]
  #   @done = todos[:done]

  attr_reader :id, :name, :done
  def initialize(id: nil, name: "no name", done: false) # defaults
    @id = id
    @name = name
    @done = done
  end

  def self.all
    [
      {
        id: 1,
        name: 'Walk the dog',
        done: false
      },
      {
        id: 2,
        name: 'Homework',
        done: true
      },
      {
        id: 3,
        name: 'Cook diner',
        done: false
      }
    ].map do |item|
      Todos.new(item)
    end
  end
end