class TasksController < ApplicationController
  # GET /tasks
  def index
    # TaskMailer.new.create
    @tasks = Task.all
  end
end
