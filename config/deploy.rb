# config valid only for Capistrano 3.1
lock '3.1.0'
set :rbenv_ruby, '2.1.1'
set :application, 'chuvsu_server'
set :repo_url, 'git@github.com:hello42/chuvsu_server.git'


# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }
set :branch, "dev"

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/home/deploy/apps/chuvsu_server'

# Default value for :scm is :git
set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :debug

# Default value for :pty is false
#set :pty, true
#set :use_sudo, true


# Default value for :linked_files is []
set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }
set :default_env, {
    'PATH' => "$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
}

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end


  desc 'Setup'
  task :setup do |host|
    invoke "#{scm}:check"
    invoke 'deploy:check:directories'
    invoke 'deploy:check:linked_dirs'
    invoke 'deploy:check:make_linked_dirs'
    invoke 'deploy:upload_config_file'
    #TODO: render config_file
    #"configure db file"
    #make psql db, user
    invoke :deploy
  end

  desc 'upload database, unicorn, unicorn_init file, nginx. After this command need ln -nfs (nginx, /etc/init.d/) '
  task :upload_config_file do
    on roles(:all) do |host|
      upload! 'config/database.example.yml',  "#{shared_path}/config/database.yml"
      upload! 'config/nginx.conf',  "#{shared_path}/config/nginx.conf"
      upload! 'config/unicorn.rb',  "#{shared_path}/config/unicorn.rb"
      upload! 'config/unicorn_init.sh',  "#{shared_path}/config/unicorn_init.sh"
    end
  end

      #sudo "ln -s #{shared_path}/config/nginx.conf /etc/nginx/sites-enabled/chuvsu"
      #sudo "ln -s #{shared_path}/unicorn_init.sh /etc/init.d/unicorn_chuvsu"
      #sudo "ln -ndf #{shared_path}/config/nginx.conf /etc/nginx/site-enabled/#{app_name}"
      #sudo "ln -ndf #{shared_path}/config/nginx.conf /etc/nginx/site-enabled/#{app_name}"
      #ln -nfs unicorn
      #ln -nfs nginx
      #sudo "ln -nfs #{shared_path}/config/nginx.conf /etc/nginx/sites-enabled/chuvsu_app"
      ##execute "mkdir  #{shared_path}/config/"
      ##sudo "ln -s /var/log/upstart /var/www/log/upstart"
      #upload!('shared/database.yml', "#{shared_path}/config/database.yml")
      #upload!('shared/Procfile', "#{shared_path}/Procfile")
      #upload!('shared/nginx.conf', "#{shared_path}/nginx.conf")
      #sudo 'stop nginx'
      #sudo "rm -f /usr/local/nginx/conf/nginx.conf"
      #sudo "ln -s #{shared_path}/nginx.conf /usr/local/nginx/conf/nginx.conf"
      #sudo 'start nginx'

      #within release_path do
        #with rails_env: fetch(:rails_env) do
          #execute :rake, "db:create"
        #end
end
