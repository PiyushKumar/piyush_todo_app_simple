class TodosController < ApplicationController
  def index
    @todo_items = Todo.all
    #render :nothing => true
    @new_todo = Todo.new

  end

  def delete
    #delete logic goes in here
  end

  def add
    todo = Todo.create(:todo_item => params[:todo][:todo_item])
    unless todo.valid?
      flash[:error] = todo.errors.full_messages.join("<br>").html_safe
    else
      #set flash[:success] to "Todo added successfully"
    end
    redirect_to :action => 'index'
  end

end
