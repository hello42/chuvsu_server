chuvsu_server
=============

Северная часть для приложения


install
=======

  ```
  git clone git@github.com:hello42/chuvsu_server.git
  bundle install
  rake db:setup
  cp config/database.example.yml
  ```

NOTE
====

  * if artilce have not images then return my standart image = "/standart/startdart.jpg"

  * deploy

namespace :foreman do
  desc "Export the Procfile to Ubuntu's upstart scripts"
  task :export, :roles => :app do
    run "cd #{current_path} && #{sudo} foreman export upstart /etc/init -a #{app_name} -u #{user} -l /var/#{app_name}/log"
  end

  desc "Start the application services"
  task :start, :roles => :app do
    run "#{sudo} service #{app_name} start"
  end

  desc "Stop the application services"
  task :stop, :roles => :app do
    run "#{sudo} service #{app_name} stop"
  end

  desc "Restart the application services"
  task :restart, :roles => :app do
    run "#{sudo} service #{app_name} start || #{sudo} service #{app_name} restart"
  end
