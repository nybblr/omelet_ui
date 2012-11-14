require_dependency "omelet_ui/application_controller"
require "omelet_ui/dynamic_binding"

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
			@template = Template.find params[:template_id]
		end

		def create
			@report = Report.new params[:report]
			@template = Template.find params[:template_id]

			# Generate query
			# First, create binding for input
			bind = DynamicBinding.new @report.app_meta
			# Then execute it in that binding
			query = @template.query
			@report.query = bind.execute { eval query }.to_sql

			# Set user_id and template
			@report.user_id = \
				send(OmeletUi.current_user).send(OmeletUi.identifier)
			@report.template = @template.title

			# And off we go!
			@report.request

			redirect_to reports_path
		end
	end
end
