class TasksController < ApplicationController

  # def toggle
  #   item = Item.find(params[:task_id])
  #
  #   item.completed ? item.completed = false : item.completed = true
  #
  #   redirect_to user_path(current_user)
  # end

  def create
    @task = Task.new(task_params)
  end

  private

  def task_params
    params.require(:task).permit(:description, :completed, :expires_at)
  end
end

# <%= link_to "Complete", item_toggle_path(@item), method: :put %>

# <%= @item.completed ? "Completed" : "Pending" %>
