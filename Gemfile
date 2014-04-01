source 'https://rubygems.org'

gem 'rails', '4.0.2'
gem 'sass-rails', '~> 4.0.0'
gem 'haml-rails'
gem 'less-rails' #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem 'twitter-bootstrap-rails'
gem 'i18n' #delete?
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

gem 'feed_parser'
gem 'whenever', :require => false

gem 'simple_form'

gem 'activeadmin', github: 'gregbell/active_admin'


gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'


gem 'sqlite3'
group :development do
  gem 'spring'
  gem 'debugger'
  gem 'mina'
  gem 'mina-scp', require: false
  gem 'erb2haml'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'seed_dump'
  gem 'quiet_assets'
end


group :production do
  gem 'pg'
  gem 'unicorn'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
