class TasksController < ApplicationController

	protect_from_forgery except: :create

	def index
		# binding.pry
		respond_to do |format|
			# format.html { render json: Task.all }
			format.html { @tasks = "Task.all" }
			format.json { render json: Task.all }
		end
	end

	def new

	end

	def create
		# binding.pry
		puts params
		new_task = Task.create({task_text: params["task_text"], due_date: params["due_date"]})
		puts new_task
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
		respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
	end

	private

	def task_params
		params.require(:task).permit(:task_text, :due_date, :completed)
	end

end
