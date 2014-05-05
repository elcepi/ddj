class TaskMailer
  def create
    port = Rails::Server.new.options[:Port]
    env = "#{Rails.env} "
    if port
      env += port
    end
    Task.new(:enviroment => port).save!
  end
end
