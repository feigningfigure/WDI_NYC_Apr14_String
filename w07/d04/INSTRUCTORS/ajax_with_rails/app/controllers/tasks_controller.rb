class TasksController < ApplicationController

	def index
		# binding.pry
		respond_to do |format|
			# format.html { render json: Task.all }
			format.html { @tasks = "I am a task requested by an HTML request!" }
			format.json { render json: "I am responging to a JSON request!" }
		end
	end

	def new

	end

	def create

	end

	def show

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
