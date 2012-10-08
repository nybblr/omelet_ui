require_dependency "omelet_ui/application_controller"

module OmeletUi
	class ReportsController < ApplicationController
		def index
			@reports = Report.for "me@nybblr.com"
		end

		def show
		end

		def edit
		end
	end
end
