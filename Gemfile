
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2' # or the latest supported version for your system

# Main Rails app
gem 'rails', '~> 7.1.0'
gem 'pg', '>= 1.4'
gem 'puma', '~> 6.0'
gem 'jbuilder'
gem 'bootsnap', require: false
gem 'devise'
gem "responders"

# CSS / JS toolchain (via Rails 7's new system)
gem 'sassc-rails'
gem 'importmap-rails'      # or jsbundling-rails if you prefer
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails'

# File uploads
gem 'carrierwave'
gem 'cloudinary'

# UI
gem 'material_icons'
gem 'jquery-rails'

# Dev & Test tools
group :development, :test do
  gem 'byebug'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
end

group :development do
  gem 'listen'
  gem 'web-console'
  gem 'spring-watcher-listen'
  gem 'hotwire-livereload'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

