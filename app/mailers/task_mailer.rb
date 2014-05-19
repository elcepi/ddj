class TaskMailer
  def create
    env = "#{Rails.env} "
    Task.new(:enviroment => env).save!
  end
  handle_asynchronously :create
end
