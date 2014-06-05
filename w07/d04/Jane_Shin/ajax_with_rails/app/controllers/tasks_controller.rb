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
		# binding.pry
			format.json { render json: { message: "I am JSON hear me Roarrrrr!" } }

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
