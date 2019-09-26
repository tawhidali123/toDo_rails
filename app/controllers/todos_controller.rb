class TodosController < ApplicationController

    def index
        @todos = Todo.all
    end

    def show
        @todo = Todo.find(params[:id])
    end

    def new
        @todo = Todo.new
    end

    def create
        # POST
        todo = Todo.create(permission)
        # if todo.errors.
        #     redirect_to todos_path
        # else
        #     redirect_to new_todo_path
        # end
        redirect_to todos_path
    end

    def edit
        @todo = Todo.find(params[:id])
    end

    def update
        # POST
        Todo.find(params[:id]).update(permission)
        redirect_to todo_path
    end

    def destroy
        # POST
        todo = Todo.find(params[:id])
        Todo.delete(todo)
        redirect_to todos_path
    end




    private

    def permission
        params.require(:todo).permit(:activity, :priority)
    end


end
