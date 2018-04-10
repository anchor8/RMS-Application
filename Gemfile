source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Use bootstrap for styling
gem 'bootstrap', '~> 4.0.0'

# Use ActiveModel has_secure_password
gem 'bcrypt', git: 'https://github.com/codahale/bcrypt-ruby.git', require: 'bcrypt'

# Use breadcrumbs on rails for managing Breadcrumbs
gem 'breadcrumbs_on_rails'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# chartkick gem
gem 'chartkick'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# Use devise for login system
gem 'devise'

# Use font awesome for fonts and images
gem 'font-awesome-rails'

# groupdate gem used for chartkick
gem 'groupdate'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Use jquery
gem 'jquery-rails'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.5'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'

# Use Puma as the app server
gem 'puma', '~> 3.7'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Turbolinks makes navigating your web application faster.
# Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use validate timeliness to check date formats
gem 'validates_timeliness'

# If Windows
gem 'wdm', '>= 0.1.0' if Gem.win_platform?

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution
  # and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages
  # or by using <%= console %> anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'

  # Spring speeds up development by keeping your application running
  # in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end