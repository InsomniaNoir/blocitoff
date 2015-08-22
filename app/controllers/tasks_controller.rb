class TasksController < ApplicationController

  def toggle
    task = Task.find(params[:task_id])

    task.completed ? task.completed = false : task.completed = true

    redirect_to user_path(current_user)
  end

  def create
    @task = Task.new(task_params)
  end

  private

  def task_params
    params.require(:task).permit(:description, :completed, :expires_at)
  end
end
