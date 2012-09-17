# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "omelet-ui"
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonathan Martin, Wylie McEvoy, Brian Aikens, Jarad Mallard, Ky Lee"]
  s.date = "2012-09-17"
  s.description = "Adds a mountable interface and API for adding/requesting/querying reports on a local Omelet report queue server."
  s.email = "me@nybblr.com"
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "MIT-LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app/assets/images/omelet_ui/.gitkeep",
    "app/assets/javascripts/omelet_ui/application.js",
    "app/assets/stylesheets/omelet_ui/application.css",
    "app/controllers/omelet_ui/application_controller.rb",
    "app/helpers/omelet_ui/application_helper.rb",
    "app/views/layouts/omelet_ui/application.html.erb",
    "config/routes.rb",
    "lib/omelet_ui.rb",
    "lib/omelet_ui/engine.rb",
    "lib/omelet_ui/version.rb",
    "lib/tasks/omelet_ui_tasks.rake",
    "omelet_ui_default.gemspec",
    "script/rails"
  ]
  s.homepage = "http://github.com/nybblr/omelet-ui"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "Front-end Rails engine for Omelet report queue."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<omelet_ui>, [">= 0"])
      s.add_runtime_dependency(%q<rails>, ["= 3.2.8"])
      s.add_runtime_dependency(%q<sqlite3>, [">= 0"])
      s.add_runtime_dependency(%q<jeweler>, [">= 0"])
      s.add_runtime_dependency(%q<paperclip>, [">= 0"])
      s.add_runtime_dependency(%q<friendly_id>, [">= 0"])
      s.add_runtime_dependency(%q<stipulate>, [">= 0"])
      s.add_runtime_dependency(%q<simple_form>, [">= 0"])
      s.add_runtime_dependency(%q<kaminari>, [">= 0"])
      s.add_runtime_dependency(%q<bourbon>, [">= 0"])
      s.add_runtime_dependency(%q<foreman>, [">= 0"])
      s.add_runtime_dependency(%q<haml>, [">= 0"])
      s.add_runtime_dependency(%q<rabl>, [">= 0"])
      s.add_runtime_dependency(%q<squeel>, [">= 0"])
      s.add_runtime_dependency(%q<rb-readline>, [">= 0"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<haml-rails>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
    else
      s.add_dependency(%q<omelet_ui>, [">= 0"])
      s.add_dependency(%q<rails>, ["= 3.2.8"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<paperclip>, [">= 0"])
      s.add_dependency(%q<friendly_id>, [">= 0"])
      s.add_dependency(%q<stipulate>, [">= 0"])
      s.add_dependency(%q<simple_form>, [">= 0"])
      s.add_dependency(%q<kaminari>, [">= 0"])
      s.add_dependency(%q<bourbon>, [">= 0"])
      s.add_dependency(%q<foreman>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<rabl>, [">= 0"])
      s.add_dependency(%q<squeel>, [">= 0"])
      s.add_dependency(%q<rb-readline>, [">= 0"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<haml-rails>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<omelet_ui>, [">= 0"])
    s.add_dependency(%q<rails>, ["= 3.2.8"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<paperclip>, [">= 0"])
    s.add_dependency(%q<friendly_id>, [">= 0"])
    s.add_dependency(%q<stipulate>, [">= 0"])
    s.add_dependency(%q<simple_form>, [">= 0"])
    s.add_dependency(%q<kaminari>, [">= 0"])
    s.add_dependency(%q<bourbon>, [">= 0"])
    s.add_dependency(%q<foreman>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<rabl>, [">= 0"])
    s.add_dependency(%q<squeel>, [">= 0"])
    s.add_dependency(%q<rb-readline>, [">= 0"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<haml-rails>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
  end
end

