class ReportJob
	@queue = :default

	def self.perform(params)
		report = Report.find(params[:id])
	end
end
