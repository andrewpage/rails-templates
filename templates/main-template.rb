gem 'sass-rails', '~> 4.0.0'

gem 'searchkick'
gem 'will_paginate'

gem 'rails_config'

gem 'devise'
gem 'cancan'

gem 'zeus'

gem 'email_validator'

gem 'factory_girl'

gem 'rspec'

gem_group :development, :test do
	gem 'awesome_print'
	gem 'sqlite3'
	gem 'better_errors'

	gem 'pry-rails'

	gem 'erb2haml'

	gem 'letter_opener'
end	

gem_group :production do
	gem 'pg'
	gem 'unicorn-rails'

	gem 'newrelic_rpm'
	gem 'rateaux'
end

generate(:devise, 'install')

run('rm README.rdoc')
run('touch README.md')

run('bundle install')

git :init
git add: '.'
git commit: "-m 'Initial commit'"
