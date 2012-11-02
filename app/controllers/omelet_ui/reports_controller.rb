require_dependency "omelet_ui/application_controller"

module OmeletUi
	class ReportsController < ApplicationController
		def index
			@reports = Report.for \
				send(OmeletUi.current_user).send(OmeletUi.identifier)

			@pending  = @reports.select {|r| r.pending? }
			@queued   = @reports.select {|r| r.queued? }
			@running  = @reports.select {|r| r.processing? }
			@finished = @reports.select {|r| r.completed? }
		end

		def show
			redirect_to "/assets/omelet_ui/sample.jpg"
		end

		def edit
		end

		def new
			@report = Report.new
		end

		def create
			@report = Report.new params[:report]
			@report.save
			@report.request

			redirect_to reports_path
		end
	end
end
