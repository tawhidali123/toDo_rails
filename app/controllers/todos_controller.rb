class TodosController < ApplicationController

    def index
        @todos = Todo.all
    end

    def show
        @todo = find_me
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
        byebug
        redirect_to todos_path
    end

    def edit
        @todo = find_me
    end

    def update
        # POST
        find_me.update(permission)
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
        params.require(:todo).permit(:activity, :priority, :time)
    end

    def find_me
        Todo.find(params[:id])
    end


end
