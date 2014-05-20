root_path = "/var/www/chuvsu_server/current/"

working_directory root_path
pid "#{root_path}/tmp/pids/unicorn.pid"
stderr_path "#{root_path}/log/unicorn_err.log"
stdout_path "#{root_path}/log/unicorn_out.log"

listen "/tmp/.unicorn.chuvsu.sock"
worker_processes 2
timeout 30
