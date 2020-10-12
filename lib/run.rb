require_relative './todos'
require_relative './todos_view'
require_relative './todos_controller'

controller = TodosController.new
controller.run