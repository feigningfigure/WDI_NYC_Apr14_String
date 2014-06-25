class TasksController < ApplicationController

  def index
    respond_to do |format|
      format.html { render json: Task.all }
    # format.html {{@tasks = Task.all }
    # format.json {render json: Task.all}
    end
  end

  def create

  end

  def show

  end

  def show

  end

  def edit

  end

  def update

  end

  def delete

  end

private

  def task_params
    params.require(:task).permit(:task_text, :due_date, :completed)
  end

end
