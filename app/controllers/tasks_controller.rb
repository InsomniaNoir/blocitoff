class TasksController < ApplicationController

  def toggle
    task = Task.find(params[:task_id])
    task.completed ? task.completed = false : task.completed = true
    task.save
    redirect_to user_path(current_user)
  end

  def create
    @task = current_user.tasks.build(task_params)
    @task.expires_at = Time.now + 7.days

    if @task.save
      flash[:notice] = "Task has been added to your To Do list!"
    else
      flash[:error] = "Your task was not added to your To Do list. Please try again."
    end
    redirect_to user_path(current_user)
  end

  private

  def task_params
    params.require(:task).permit(:description)
  end
end
