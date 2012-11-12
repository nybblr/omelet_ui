require_dependency "omelet_ui/application_controller"

module OmeletUi
	class TemplatesController < ApplicationController
		def index
			@templates = Template.scoped
		end

		def show
			@template = Template.find params[:id]
		end

		def new
			@template = Template.new
		end

		def create
			@template = Template.new params[:template]
			@template.save

			redirect_to templates_path
		end

		def edit
			@template = Template.find params[:id]
		end

		def update
			@template = Template.find params[:id]
			@template.attributes = params[:template]
			@template.save

			redirect_to templates_path
		end

	end
end
