class TaskMailer
  def create
    Delayed::Worker.logger.debug("Entering TaskMailer.create")
    t = Task.new(:enviroment => Rails.env)
    t.save!
    Delayed::Worker.logger.debug("Exiting TaskMailer.create #{t}")
  end
  handle_asynchronously :create
end
