class TasksController < ApplicationController

	protect_from_forgery except: :create

	def index
		# binding.pry
		@tasks = Task.all
		respond_to do |format|
			# format.html { render json: Task.all }
			format.html { @tasks }
			format.json { render json: @tasks }
		end
	end

	def new

	end

	def create
		# binding.pry
		new_task = Task.create({task_text: params["task_text"], due_date: params["due_date"]})
		respond_to do |format|
			format.json { render json: @tasks}
		end
	end

	def show

	end

	def edit

	end

	def update
		binding.pry
		tasks = Task.all
		Task.update({task_text: params["task_text"]})
		respond_to do |format|
			format.json { render json: tasks}
		end
	end

	def destroy
		Task.destroy(params[:id])
		respond_to do |format|
			# format.html { render json: Task.all }
			format.json { render json: @tasks }
		end
	end

	private

	def task_params
		params.require(:task).permit(:task_text, :due_date, :completed)
	end

end

