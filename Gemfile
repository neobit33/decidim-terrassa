source "https://rubygems.org"

ruby '2.6.5'

DECIDIM_VERSION = "~> 0.20.0"

gem "decidim", DECIDIM_VERSION
gem "virtus-multiparams"

gem 'puma'
gem 'uglifier'
gem 'faker'
gem "sprockets", "~> 3.7.2"

gem "geocoder", "~> 1.5.2"

group :development, :test do
  gem 'byebug', platform: :mri
  gem "decidim-dev", DECIDIM_VERSION
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'spring-commands-rspec'
  gem 'launchy'
end

group :production do
  gem "rails_12factor"
  gem "fog-aws"
  gem 'dalli'
  gem 'sendgrid-ruby'
  gem 'newrelic_rpm'
  gem "lograge"
  gem "sentry-raven"
  gem "sidekiq"
end

group :test do
  gem "rspec-rails"
  gem "database_cleaner"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
