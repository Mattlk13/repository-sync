ruby '2.4.2'

source 'https://rubygems.org'

gem 'sinatra', '2.0.0'
gem 'unicorn', '~> 4.9', '>= 4.9.0'
gem 'rake'
gem 'git', '~> 1.2.6'
gem 'octokit', '~> 3.0'
gem 'resque', '~> 1.27', '>= 1.27.4'

group :development do
  gem 'foreman', '~> 0.71'
  gem 'rerun', '~> 0.10'
  gem 'pry'
  gem 'dotenv', '~> 0.11'
end

group :test do
  gem 'resque_spec', '~> 0.16.0'
  gem 'rspec', '~> 3.1'
  gem 'rack-test', '~> 0.8', '>= 0.8.3'
  gem 'webmock', '~> 1.2'
end
