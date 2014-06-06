class TasksController < ApplicationController

	protect_from_forgery except: :create	

	def index
		# binding.pry
		respond_to do |format|
			# format.html { render json: Task.all }
			format.html { @tasks = "Task.all" }
			format.json { render json: "I am a response" }
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

		new_task = Task.show({task_text: params["task_text"], due_date: params["due_date"]})
		respond_to do |format|
			format.json { render json: new_task}
		end

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
