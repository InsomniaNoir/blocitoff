class TasksController < ApplicationController

  def toggle
    task = Task.find(params[:task_id])

    task.completed ? task.completed = false : task.completed = true

    redirect_to user_path(current_user)
  end

  def create
    @task = current_user.tasks.build(task_params)
    @task.expires_at = Time.now + 7.days
    puts @task.inspect

    if @task.save
      puts "saved"
      flash[:notice] = "Task has been added to your To Do list!"
    else
      puts "failing"
      flash[:error] = "Your task was not added to your To Do list. Please try again."
    end
    redirect_to user_path(current_user)
  end

  private

  def task_params
    params.require(:task).permit(:description)
  end
end
