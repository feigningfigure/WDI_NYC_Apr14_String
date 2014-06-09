class TasksController < ApplicationController

	protect_from_forgery except: :create

	def index
		# binding.pry
		respond_to do |format|
			# format.html { render json: Task.all }
			format.html { @tasks = Task.all }
			format.json { render json: Task.all }
		end
	end

	def new

	end

	def create
		# binding.pry

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

	end

	def destroy
		task_to_destroy = Task.find_by_id(params[:id])
		task_to_destroy.destroy
		respond_to do |format|
			format.json { render json: "deleted" }
		end
	end

	private

	def task_params
		params.require(:task).permit(:task_text, :due_date, :completed)
	end

end
