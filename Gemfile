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

group :development, :test do
  gem 'pry-rails'
end
