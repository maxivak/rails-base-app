﻿source 'https://rubygems.org'

ruby "2.3.3"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'

# Use Puma as the app server
group :development, :test do
  gem 'puma', '~> 3.0'
end

#
gem 'mysql2'

#
gem 'devise', '4.2.0' #, '3.5.6'

if Bundler::WINDOWS
  #gem 'bcrypt-ruby', '~> 3.0.0', require: false
  gem 'bcrypt-ruby', '3.1.1.rc1', :require => 'bcrypt'
else
  gem 'bcrypt', '~> 3.1.10', require: false
end
#gem 'net-ssh', '3.1.1'
gem 'net-ssh', '3.1.1', github: 'maxivak/net-ssh', :branch => '3-1-release'
#gem 'net-ssh', '4.0.0.alpha3'
#gem 'bcrypt', '~> 3.1.7'

#
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-linkedin'
#gem 'certified'

#
#gem 'activeadmin', '1.0.0.pre2' # bad

#gem 'activeadmin', github: 'activeadmin'
#gem 'inherited_resources', github: 'activeadmin/inherited_resources'

#gem "active_admin-sortable_tree"

gem 'optimacms', '0.3.2', github: 'maxivak/optimacms', branch: 'rails5-bootstrap4'
#gem 'optimacms', '0.3.2', path: '/projects/temp/optimacms'
#gem 'optimacms', '0.2.1', path: '../optimacms'
#gem 'optimacms', '0.2.1', :git => 'https://github.com/maxivak/optimacms.git', :branch => 'bootstrap_v4_alpha'

#gem 'rails_themes_bootstrap', '0.0.2',:git => 'git://github.com/maxivak/rails_themes_bootstrap.git'

gem 'globalize', '~>5.1.0', github: 'globalize/globalize'
gem 'activemodel-serializers-xml'
gem 'globalize-accessors'

#
gem 'haml-rails', '~>0.9.0'
#gem 'sass-rails', '~> 5.0.0'
gem 'sass-rails', '~> 5.0.6'
#gem 'sass-rails', '>= 3.2'
#gem 'compass-rails'#, '2.0.5'
#gem 'sprockets-rails'#, '2.3.3'
gem 'uglifier', '>= 1.3.0'
#gem 'coffee-script-source', '1.8.0'
#gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails' #,'4.0.3'
gem 'font-awesome-rails', '~>4.7'

# bootstrap v4 alpha
gem 'bootstrap', '~> 4.0.0.alpha6'


#
gem 'rails-i18n', '~> 5.0'

#
gem 'rack-cache'
gem 'redis-rails'



# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
#gem 'turbolinks', '~> 5'


# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder' #, '~> 2.0'



# See https://github.com/sstephenson/execjs#readme for more supported runtimes
#gem 'therubyracer', platforms: :ruby
#gem 'execjs'



gem 'kaminari'
gem 'kaminari-bootstrap'#, '~> 3.0.1'

gem 'simple_form', '~>3.3.1'
#gem 'simple_search_filter', '0.0.31'
gem 'simple_search_filter', '~>0.0.31', github: 'maxivak/simple_search_filter', branch: 'bootstrap4'
#gem 'bootstrap3_autocomplete_input', '0.2.0'


gem 'paperclip'#, '~> 4.2'
gem 'ancestry'


# tinymce
gem 'tinymce-rails'#, '4.1.6'

# editor
gem 'el_finder', '1.1.12'


#
#gem 'callback_request_bootstrap'

#
gem 'redis'
gem "simple_events_redis", '1.0.1'
gem 'sidekiq'


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'rspec-rails' #, '3.1.0'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'faker'
  gem 'capybara'
  #gem "capybara-webkit"
  #gem 'selenium-webdriver'

end





group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  #gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  #gem 'web-console', '~> 2.0'

  gem 'rspec-rails'#, '3.1.0'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'faker'
  #gem "capybara-webkit"
  #gem 'selenium-webdriver'
end


# deployment
group :development do
  gem 'capistrano'#,  '3.4.0'
  gem 'capistrano-rails'#, '1.1.3'
  gem 'capistrano-bundler'#, '~> 1.1'
  gem 'capistrano-rvm'#,   '~> 0.1'

  #gem 'capistrano-passenger'
  #gem 'capistrano-touch-linked-files'
  #gem 'capistrano-upload-config'

end
