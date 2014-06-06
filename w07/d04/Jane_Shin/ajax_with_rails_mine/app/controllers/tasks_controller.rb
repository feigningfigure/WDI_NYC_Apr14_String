class TasksController < ApplicationController

protect_from_forgery except: :create

	def index
		respond_to do |format|
			format.html { @tasks = Task.all }
			format.json { render json: Task.all }
		end
	end

	def new

	end

	def create
		new_task = Task.create({task_text: params["task_text"], due_date: params["due_date"]})
		respond_to do |format|
			format.json { render json: new_task}
		end

	end

	def show

	end

	def edit

	end

	def update
# bonus
	end

	def delete
# bonus
	end

	private

	def task_params
		params.require(:task).permit(:task_text, :due_date, :completed) 		
	end

end
