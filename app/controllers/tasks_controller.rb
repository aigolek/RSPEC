class TasksController < ApplicationController
   def new
      @task = Task.new
   end 
   def create
      @task = Task.new(task_params)
      if @task.save
         redirect_to task_path(@task), notice: 'Saved'

      else   
         render :new 
      end 

   end 
   def show
      @task = Task.find(params[:id])
   end  

   def index 
      @tasks = Task.all
   end 
      
   def task_params
      params.require(:task).permit(:name, :text)
    end
end