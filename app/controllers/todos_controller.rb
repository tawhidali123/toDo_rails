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
        # Todo.create()
        Todo.create(params.require(:todo).permit(:activity))
        redirect_to todos_path
    end

    def edit
        @todo = Todo.find(params[:id])
    end

    def update
        # POST
        Todo.update(params.require(:todo).permit(:activity))
        redirect_to todo_path
    end

    def destroy
        # POST
    end

    # private

    # def create_params

    # end


end
