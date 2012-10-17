require_dependency "omelet_ui/application_controller"

module OmeletUi
	class ReportsController < ApplicationController
		def index
			# TODO need to move to identifier syntax
			@reports = Report.for "me@nybblr.com"
			@pending = @reports.select {|r| r.pending? }
			@queued = @reports.select {|r| r.queued? }
			@running = @reports.select {|r| r.processing? }
			@finished = @reports.select {|r| r.completed? }
		end

		def show
		end

		def edit
		end
	end
end
