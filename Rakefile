# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task :node1 do
  `bundle exec rails s -p 3001 -P tmp/pids/node1.pid`
end

task :node2 do
  `bundle exec rails s -p 3002 -P tmp/pids/node2.pid`
end