require 'omelet_ui/comm'
require 'tableless'

module OmeletUi
	class Report < Tableless
		# include ActiveModel::Validations
		# include ActiveModel::Conversion
		# extend ActiveModel::Naming

		attr_accessible	:id
		attr_accessible :status
		attr_accessible :title
		attr_accessible :template
		attr_accessible :user_meta
		attr_accessible :app_meta
		attr_accessible :queued_at
		attr_accessible :completed_at
		attr_accessible :created_at
		attr_accessible :updated_at

		# def initialize attrs={}
		# 	attrs.each do |key, value|
		# 		send "#{key}=".to_sym, value
		# 	end
		# end

		def self.for(user_id)
			### Overview
			##  Need to ping queue server with standard HTTP request
			##  Returns a JSON string, convert to Report object.
			response = comm.get "reports.json?user_id=#{user_id}&app_id=#{OmeletUi.app_id}"

			hash = ActiveSupport::JSON.decode response.body
			reports = hash.collect do |report|
				puts(report["report"])
				Report.new report["report"]
			end

			return reports
		end

		def persisted?
			false
		end

		def self.comm
			@comm ||= OmeletUi::Comm.new OmeletUi.server
			@comm
		end

		# def inspect
		# 	return { \
		# 		:status => status,
		# 		:title => title,
		# 		:template => template,
		# 		:user_meta => user_meta,
		# 		:app_meta => app_meta,
		# 		:queued_at => queued_at,
		# 		:completed_at => completed_at,
		# 		:created_at => created_at,
		# 	}.inspect
		# end
	end
end
