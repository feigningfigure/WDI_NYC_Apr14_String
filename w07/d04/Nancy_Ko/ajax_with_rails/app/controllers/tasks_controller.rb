class TasksController < ApplicationController

	protect_from_forgery except: :create	

	def index
		# binding.pry
		@tasks = Task.all
		respond_to do |format|
			# format.html { render json: Task.all }
			format.html { @tasks}
			format.json { render json: @tasks }
		end
	end

	def new

	end

	def create
		@new_task = Task.create({task_text: params["task_text"], due_date: params["due_date"]})
		respond_to do |format|
			format.json { render json: @new_task }
		end
	end

	def show
		# binding.pry
		@task = Task.all
		# respond_to do |format|
		# 	format.json { render json: @show_task }
		# end
	end

	def edit

	end

	def update

	end

	def destroy

	end

	private

	def task_params
		params.require(:task).permit(:task_text, :due_date, :completed)
	end	

end
