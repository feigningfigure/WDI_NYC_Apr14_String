class TasksController < ApplicationController


  def index
    respond_to do |format|
      # format.html { render json: Task.all }
      format.html { @tasks = Task.all }
      format.json { render json: Task.all }
    end

  end

  def new

  end

  def create

    render json "I am a json response"

  end

  def show

  end

  def update

  end

  def edit

  end

  def destroy

  end

  private

  def task_params
    params.require(:task).permit(:text_text, :due_date, :completed)
  end


end
