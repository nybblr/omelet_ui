source "http://rubygems.org"

# Declare your gem's dependencies in omelet-ui.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
# gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# gem 'sqlite3'

# Gem management dependency
gem 'jeweler'

# Storage
gem 'paperclip' # manage model file attachments
gem 'friendly_id' # prettier URLs with history
gem 'stipulate' # enumerate string values on field

# Interface
gem 'simple_form' # clean HTML5 forms
gem 'kaminari' # pagination
gem 'bourbon' # CSS3 SASS import rules

# Daemons
# gem 'foreman' # daemon management: Procfile
# gem 'resque' # job queuing and management

# Renderers
gem 'haml' # cleaner HTML alternative/renderer
gem 'haml-rails', :group => :development
gem 'rabl' # JSON, XML, etc. templating

# Security
# gem 'cancan' # authorization gem for defining who can do what
# gem 'devise' # login functionality/interface/integration

# ActiveRecord
gem 'squeel' # WHERE queries without raw SQL fragments

# These are strictly for ubuntu compatibility
gem 'rb-readline'

# Testing
gem 'rspec-rails', :group => [:test, :development]
group :test do
	gem 'shoulda' # clean RSpec asserts
	gem 'factory_girl_rails' # factory generation
	gem 'capybara' # integration testing
	# gem 'capybara-webkit' # webkit-based JavaScript testing
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'

end

gem 'jquery-rails'



# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
