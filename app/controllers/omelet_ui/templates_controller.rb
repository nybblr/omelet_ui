require_dependency "omelet_ui/application_controller"

module OmeletUi
	class TemplatesController < ApplicationController
		def index
			@template = Template.new
		end

		def show
		end

		def new
		end

		def create
			@template = Template.new params[:template]
			@template.save

			redirect_to templates_path
		end

		def edit
		end

		def update
		end

	end
end
