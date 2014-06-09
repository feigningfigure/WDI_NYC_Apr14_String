class TasksController < ApplicationController

	protect_from_forgery except: :create

	def index
		# binding.pry
		respond_to do |format|
			# format.html { render json: Task.all }
			@tasks = Task.all
			format.html {  }
			format.json { render json: @tasks }
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
		@task = Task.find(params[:id]).destroy
		redirect_to '/'

	end

	def edit

	end

	def update

	end

	def destroy

	end

	private

	def task_params
		params.require(:task).permit(:task_text, :due_date, :completed, :id)
	end

end
