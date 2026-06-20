class Api::V1::TodosController < ActionController::API

    def index
        todos = Todo.all
        render json: { status: 'SUCCESS', message: 'Loaded todos', data: todos }
    end

    def create
        todo = Todo.new(todo_params)
        if todo.save
            render json: { status: 'SUCCESS', data: todo }, status: :created
        else
            render json: { status: 'ERROR', data: todo.errors }, status: :unprocessable_entity
        end
    end

    def update
        todo = Todo.find(params[:id])
        if todo.update(todo_params)
            render json: { status: 'SUCCESS', data: todo }
        else
            render json: { status: 'ERROR', data: todo.errors }, status: :unprocessable_entity
        end
    end

    def destroy
        todo = Todo.find(params[:id])
        if todo.destroy
            render json: { status: 'SUCCESS', message: 'Deleted todo' }
        else
            render json: { status: 'ERROR', data: todo.errors }, status: :unprocessable_entity
        end
    end

    private
    def todo_params 
    params.require(:todo).permit(:title, :description, :is_completed, :user_id)
    end
end
