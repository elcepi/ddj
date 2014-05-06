class TaskMailer
  def create
    port = Rails::Server.new.options[:Port]
    env = "#{Rails.env} "
    if port
      env += port.to_s
    end
    Task.new(:enviroment => env).save!
  end
end
