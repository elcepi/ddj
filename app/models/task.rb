class Task < ActiveRecord::Base
  #Attributes :enviroment

  def to_s
    enviroment
  end
end
