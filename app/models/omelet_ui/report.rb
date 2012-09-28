module OmeletUi
	class Report
		include ActiveModel::Validations
		include ActiveModel::Conversion
		extend ActiveModel::Naming

		def self.for(user_id)
			### Overview
			##  Need to ping queue server with standard HTTP request
			##  Returns a JSON string, convert to Report object.

			report = new.from_json "{}"
			# OmeletUi.server, OmeletUi.app_id
			return report
		end

		def persisted?
			false
		end
	end
end
