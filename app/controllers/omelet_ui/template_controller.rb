require_dependency "omelet_ui/application_controller"

module OmeletUi
	class TemplateController < ApplicationController
		def new
			@template = Template.new
		end
		
		def show
		end

		def edit
		end

		def create
			@template = Template.new params[:template]
			@template.save

			redirect_to template_path
		end

		def index
		end
	end
end
