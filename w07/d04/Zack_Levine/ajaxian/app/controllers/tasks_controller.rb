class TasksController < ApplicationController

	#to get the ajax to accept 
	protect_from_forgery except: :create	

	def index
		# binding.pry
		respond_to do |format|
			format.html { @tasks = "Task.all" }
			format.json { render json: "I am a response" }
		end
	end

	def new
		# not being used
		render html: "whateverman"
	end

	def create
		# binding.pry

		new_task = Task.create({task_text: params["task_text"], due_date: params["due_date"]})
		respond_to do |format|
			format.json { render json: new_task}
		end
	end

	def show
		# individual show pages
	end

	def edit
		# edit individual tasks
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
