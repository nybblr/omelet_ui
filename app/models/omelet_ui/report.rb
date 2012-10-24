require 'omelet_ui/comm'
require 'omelet_ui/tableless'

module OmeletUi
	class Report < Tableless
		# Since this is a tableless model,
		# we have to define the schema here
		column :id,           :integer
		column :status,       :string
		column :title,        :string
		column :template,     :string
		column :user_id,      :string
		column :user_meta,    :text
		column :app_meta,     :text
		column :results,      :text
		column :queued_at,    :datetime
		column :completed_at, :datetime
		column :created_at,   :datetime
		column :updated_at,   :datetime

		serialize :user_meta, Hash
		serialize :app_meta, Hash

		# Tell rails which attributes can
		# be safely mass assigned.
		attr_accessible :id
		attr_accessible :status
		attr_accessible :title
		attr_accessible :template
		attr_accessible :user_id
		attr_accessible :user_meta
		attr_accessible :app_meta
		attr_accessible :results
		attr_accessible :queued_at
		attr_accessible :completed_at
		attr_accessible :created_at
		attr_accessible :updated_at

		stipulate :that => :status, :can_be => [:pending, :queued, :processing, :completed, :failed, :killed]

		def self.for(user_id)
			# Returns a JSON string, convert to Report object.
			data = {:user_id => user_id, :app_id => OmeletUi.app_id}
			response = comm.get "reports.json", data

			hash = ActiveSupport::JSON.decode response.body
			reports = hash.collect do |report|
				r = Report.new report["report"]
				r.user_id = user_id
				r
			end

			return reports
		end

		def self.find(report_id, user_id)
			# Returns a JSON string, convert to Report object.
			data = {:user_id => user_id, :app_id => OmeletUi.app_id}
			response = comm.get "reports/#{report_id}.json", data

			hash = ActiveSupport::JSON.decode response.body
			report = Report.new hash["report"]
			report.user_id = user_id

			return report
		end

		# Request the report
		def request(callback=nil)
			# Get curent db params
			db = Rails.configuration.database_configuration[Rails.env]

			data = {:user_id => user_id, :app_id => OmeletUi.app_id}
			data[:report] = attributes
			data[:report].delete "id"
			data[:report].delete "created_at"
			data[:report].delete "updated_at"

			data[:callback] = callback
			data[:db_params] = db

			# Send create request
			response = Report.comm.post "reports.json", data
		end

		def kill
			data = { :user_id => user_id, :app_id => OmeletUi.app_id }

			# Send destroy request
			response = Report.comm.delete "reports/#{id}.json", data
		end

		def persisted?
			false
		end

		def self.comm
			@comm ||= OmeletUi::Comm.new OmeletUi.server
			@comm
		end

	end
end
