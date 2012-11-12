module OmeletUi
  class Template < ActiveRecord::Base
    attr_accessible :description, :layout, :status, :title

	def app_meta=(attr={})
		new_meta = Struct.new(:Layout, :status).new
		new_meta.members.each do |k|
		new_meta.send(:"#{k}=", attr.fetch(k, nil))
		end
		super(new_meta)
	end
  end
end
