source "https://rubygems.org"

ruby '2.4.1'

gem "decidim", git: "git://github.com/decidim/decidim", branch: "disble-votes-on-rejected-proposals"

gem 'puma'
gem 'uglifier'
gem 'faker'
gem "passenger"

group :development, :test do
  gem 'byebug', platform: :mri
  gem "decidim-dev", git: "git://github.com/decidim/decidim", branch: "disble-votes-on-rejected-proposals"
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
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
