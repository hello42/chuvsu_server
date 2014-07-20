threads 2, 6
workers 2

on_worker_boot do
  require "active_record"
  cwd = File.dirname(__FILE__)+"/.."
  ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
  ActiveRecord::Base.establish_connection(ENV["DATABASE_URL"] || YAML.load_file("#{cwd}/config/database.yml")[ENV["RAILS_ENV"]])
end


#rails_env = ENV['RAILS_ENV'] || 'development'
#threads 4,4
#bind  "unix:///data/apps/appname/shared/tmp/puma/appname-puma.sock"
#pidfile "/data/apps/appname/current/tmp/puma/pid"
#state_path "/data/apps/appname/current/tmp/puma/state"
#activate_control_app
