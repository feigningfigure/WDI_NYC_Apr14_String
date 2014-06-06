class TasksController < ApplicationController

	protect_from_forgery except: :create

	def index
		@tasks = Task.all
		respond_to do |format|
			format.html {  }
			format.json { render json: @tasks }
		end
	end

	def new

	end

	def create
		 # PUT DATE CHANGE CODE
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
