class TasksController < ApplicationController

	protect_from_forgery except: :create

	def index
		# binding.pry
		respond_to do |format|
			# format.html { render json: Task.all }
			format.html { @tasks = Task.all }
			# Adding in Task.all to try and return all tasks on the view page
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
		# respond_to do |format|
		# 	# format.html { render json: Task.all }
		# 	format.html { @tasks = "Task.all" }
		# 	format.json { render json: Task.all }

			  @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task }

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
