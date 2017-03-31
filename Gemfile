source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '5.1.0.rc1'

gem 'puma'
gem 'sass-rails', github: 'rails/sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'erubis' # for rails_admin

# Mountable engines providing assets
gem 'bootstrap-sass'
gem 'rails_admin'

if ENV['SPROCKETS_PATH']
  gem 'sprockets', path: ENV['SPROCKETS_PATH']
end

group :development, :test do
  gem 'pry-rails'
  gem 'pry-byebug'
end
