class TodosController < ApplicationController
   respond_to :json

   def index
      respond_with Todo.all
   end

   def create
      respond_with Todo.create(todo_params)
   end

   def update
      todo = Todo.find(params[:id])
      todo.update(todo_params)
      respond_with todo
   end

   def destroy
      todo = Todo.find(params[:id])
      todo.destroy
      respond_with todo
   end

   private
   def todo_params
      params.require(:todo).permit(:status, :task_name, :description)
   end
end
