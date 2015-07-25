class TodosController < ApplicationController
  def index
    @todo_items = Todo.all
  end

  def delete
    #delete logic goes in here
  end
end
