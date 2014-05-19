class TaskMailer
  def create
    Rails.logger.error("Entering")
    t = Task.new(:enviroment => Rails.env)
    t.save!
    Rails.logger.error("Exiting #{t}")
  end
  handle_asynchronously :create
end
