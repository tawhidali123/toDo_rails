class TodoController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
  end

  def new
    @todo = Todo.new
    # form_for
   
  end

  def create
    # POST
    # @todo.activity = params[:activity]
    # @todo.done = params[:done]

    item = Todo.create(params.require(:todo).permit(:activity, :done))
    # item = Todo.create(input_params)
    redirect_to todo_path(item)
  end


  # private

  # def input_params
  #   params.require(:todo).permit(:activity, :done)
  # end


end
