# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task :node1 do
  `RAILS_ENV=node1 rake jobs:work`
end

task :node2 do
  `RAILS_ENV=node2 rake jobs:work`
end
