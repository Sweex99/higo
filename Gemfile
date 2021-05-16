source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '~> 6.1.3'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'react_on_rails'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'devise'
gem 'jsonapi-serializer'
gem 'pg'

group :development, :test do
  gem 'mimemagic', github: 'mimemagicrb/mimemagic', ref: '01f92d86d15d85cfd0f20dabd025dcbd36a8a60f'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'simplecov'
  gem 'pry-rails'
  gem 'pry'
  gem 'pry-byebug', '3.7.0'
  gem 'pry-remote', '>= 0.1.8'
  gem 'faker'
  gem 'factory_bot_rails'
  gem 'awesome_print'
  gem 'rspec-rails'
  gem 'rails_best_practices'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'ransack'
gem 'platform_agent'
gem 'geared_pagination'
gem 'spreadsheet_architect'

group :production do
  gem 'redis'
  gem 'sidekiq'
  gem 'rack-ratelimit'
  gem 'rack-timeout'
end
gem 'mini_racer', platforms: :ruby
