#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end
begin
  require 'rdoc/task'
rescue LoadError
  require 'rdoc/rdoc'
  require 'rake/rdoctask'
  RDoc::Task = Rake::RDocTask
end

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'OmeletUi'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end




Bundler::GemHelper.install_tasks

begin
	# Gem build tasks
	require 'jeweler'
	Jeweler::Tasks.new do |gem|
		# gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
		gem.name = "omelet_ui"
		gem.summary = %Q{Front-end Rails engine for Omelet report queue.}
		gem.description = %Q{Adds a mountable interface and API for adding/requesting/querying reports on a local Omelet report queue server.}
		gem.email = "me@nybblr.com"
		gem.homepage = "http://github.com/nybblr/omelet_ui"
		gem.authors = ["Jonathan Martin, Wylie McEvoy, Brian Aikens, Jarad Mallard, Ky Lee"]
	end
	Jeweler::RubygemsDotOrgTasks.new
	Jeweler::GemcutterTasks.new
rescue LoadError
	puts "Jeweler not available."
end
