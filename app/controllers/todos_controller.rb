class TodosController < ApplicationController
  def index
    @todo_items = Todo.all
    #render :nothing => true
    @new_todo = Todo.new
  end

  def delete
    #delete logic goes in here
  end

  #params is a reserved variable stored within controller to pass value as a key-val pair. They come from the 
  #browser and are encoded in the URL.
  def add
    todo = Todo.create(:todo_item => params[:todo][:todo_item])
    unless todo.valid?
      flash[:error] = todo.errors.full_messages.join("<br>").html_safe
    else
      flash[:success]  = "Todo added successfully"
    end
    redirect_to :action => 'index'
  end


  def complete
    params[:todos_checkbox].each do |check|
      todo_id = check
        t = Todo.find_by_id(todo_id)
      t.update_attribute(:completed, true)
      #code to update the status here
    end
    redirect_to :action => 'index'
  end



end
