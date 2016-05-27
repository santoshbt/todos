class TodosController < ApplicationController
	def index
		@todos = Todo.all
	end

	def new
		@todo = Todo.new 
	end

	def create
		puts params.inspect
		puts params[:todo][:title].inspect
		@todo = Todo.new(:title => params[:todo][:title])
		@todo.save
		redirect_to todos_path
	end
end
