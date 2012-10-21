require "omelet_ui/engine"

# Configuration options!
module OmeletUi
	# Specify unique app_id
	mattr_accessor :app_id
	@@app_id = nil

	# Set URL for queue server
	mattr_accessor :server
	@@server = nil

	# Set user model for UID
	mattr_accessor :current_user
	@@current_user = :current_user

	# Set user identifier method
	mattr_accessor :identifier
	@@identifier = :identifier

	# Return a block for configuring from default setup
	def self.setup
		yield self
	end

	# PRIVATE CONFIGURATION

	### Example read-only config from Devise
	# # Store scopes mappings.
	# mattr_reader :mappings
	# @@mappings = ActiveSupport::OrderedHash.new

	# # Omniauth configurations.
	# mattr_reader :omniauth_configs
	# @@omniauth_configs = ActiveSupport::OrderedHash.new

	# # Define a set of modules that are called when a mapping is added.
	# mattr_reader :helpers
	# @@helpers = Set.new
	# @@helpers << Devise::Controllers::Helpers

end
