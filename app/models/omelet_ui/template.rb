module OmeletUi
	class Template < ActiveRecord::Base
		attr_accessible :description, :layout, :status, :title, :format, :fields, :query

		serialize :fields, Hash

		stipulate :that => :status, :can_be => [:draft, :active, :inactive]

		def fields= value
			if value.kind_of? String
				self.fields = ActiveSupport::JSON.decode value
			else
				super value
			end
		end

	end
end
