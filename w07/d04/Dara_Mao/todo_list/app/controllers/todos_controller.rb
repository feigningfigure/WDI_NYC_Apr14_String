class TodosController < ApplicationController

protect_from_forgery except: :create

def index
    # binding.pry
    respond_to do |format|
      # format.html { render json: Todo.all }
      format.html { @todos = Todo.all }
      format.json { render json: todos }

    end
end

def new
end

def create
    new_todo = Todo.create({task_text: params["task_text"], due_date: params["due_date"]})
    respond_to do |format|
    format.json { render json: new_todo}
  end
end

def show



end

def edit
end

def update
end

def destroy
end

# private

# def todo_params
# end

end

