
application_path = '/var/www/chuvsu/current'
railsenv = 'production'
directory application_path
environment 'production'
daemonize false
pidfile "#{application_path}/tmp/pids/puma-#{railsenv}.pid"
state_path "#{application_path}/tmp/pids/puma-#{railsenv}.state"
stdout_redirect "#{application_path}/log/puma-#{railsenv}.stdout.log", "#{application_path}/log/puma-#{railsenv}.stderr.log"
threads 0, 16
bind "unix://#{application_path}/tmp/sockets/#{railsenv}.socket"

on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end
