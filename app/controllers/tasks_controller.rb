class TasksController < ApplicationController
  # GET /tasks
  def index
    @tasks = Task.all
  end
end
