source 'https://rubygems.org'
ruby "2.4.1"
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '5.1.4'
gem 'puma'
gem 'pg'
gem "bower-rails", "~> 0.11.0"
gem 'd3_rails'
# Auth
gem 'devise'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-google-oauth2'

# Front-end
gem 'react-rails'
gem 'bootstrap-sass'
gem 'sass-rails'
gem 'font-awesome-sass'
gem 'uglifier'
gem 'autoprefixer-rails'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'turbolinks'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jbuilder'

gem 'friendly_id'

# Image upload
gem 'carrierwave'
gem 'mini_magick'
# gem 'fog'
gem 'net-ssh'
gem 'sdoc', group: :doc

# Load will_paginate before elasticsearch gems.
gem 'will_paginate'

# Elasticsearch
gem 'elasticsearch-model'
gem 'elasticsearch-rails'

# Background Job
gem 'sidekiq'
gem 'sinatra', require: false
gem 'slim'
# gem 'sidetiq', '~> 0.7.0'

gem 'nokogiri'

# Caching
gem 'dalli'
gem 'bundler-audit'

gem 'spring'
gem 'spring-commands-rspec'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails', '~> 3.6'
  gem 'poltergeist'
  gem 'awesome_print'
  
  gem 'pry-rails'
end

group :development do
  gem 'rails_best_practices'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'
  
  gem 'guard-rspec', require: false
  
  gem 'rack-mini-profiler', require: false
  gem 'annotate'
  gem 'bullet'

end

group :test do
  gem 'database_cleaner'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'launchy'
  gem 'selenium-webdriver'
end

group :production do
  gem 'rails_12factor'
  gem 'bonsai-elasticsearch-rails'
end
