#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

OmeletUi::Application.load_tasks

begin
	# Gem build tasks
	require 'jeweler'
	Jeweler::Tasks.new do |gem|
		# gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
		gem.name = "omelet-ui"
		gem.summary = %Q{Front-end Rails engine for Omelet report queue.}
		gem.description = %Q{Adds a mountable interface and API for adding/requesting/querying reports on a local Omelet report queue server.}
		gem.email = "me@nybblr.com"
		gem.homepage = "http://github.com/nybblr/omelet-ui"
		gem.authors = ["Jonathan Martin, Wylie McEvoy, Brian Aikens, Jarad Mallard, Ky Lee"]
	end
	Jeweler::RubygemsDotOrgTasks.new
	Jeweler::GemcutterTasks.new
rescue LoadError
	puts "Jeweler not available."
end
