class TasksController < ApplicationController
  before_filter :ensure_logged_in

  def index
    @tasks = @auth.tasks.order(:title)
  end
  def create
    task = Task.create(params[:task])
    @auth.tasks << task
    render :json => [task]
  end
  def update
    task = Task.find(params[:id])
    task.update_attributes(params[:task])
    render :json => [task]
  end
end





