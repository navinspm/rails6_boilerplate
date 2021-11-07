source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

ENV['RUBY_DEP_GEM_SILENCE_WARNINGS'] = '1'

gem 'rails', '~> 6.0.3'
gem 'puma', '~> 5.5', '>= 5.5.2'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '5.0.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise'
gem 'seed-fu', '~> 2.3', '>= 2.3.6'
gem 'jquery-rails'
gem 'ckeditor', '4.2.4'
gem 'carrierwave', '~> 1.0'
gem 'carrierwave-data-uri'
gem 'carrierwave-i18n'
gem 'mini_magick', '~> 4.8'
gem 'public_activity'
gem 'listen'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "pry-rails"
  gem "capistrano", "~> 3.10", require: false
  gem "capistrano-rails", "~> 1.6", require: false
  gem 'capistrano-rvm'
  gem 'capistrano3-puma', github: "seuros/capistrano-puma"
  gem 'rename'
  gem 'sqlite3'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

group :production do
  gem 'pg'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
