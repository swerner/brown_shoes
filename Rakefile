require 'rubygems'
require 'rake'
require 'rspec/core/rake_task'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "brown_shoes"
    gem.summary = %Q{JRuby implementation of shoes}
    gem.description = %Q{JRuby implementation of shoes}
    gem.email = "stwerner@vt.edu"
    gem.homepage = "http://github.com/scottw/brown_shoes"
    gem.authors = ["Scott Werner"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
    gem.files.include('lib/**/*.rb')
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

RSpec::Core::RakeTask.new do |t|
  t.pattern = "./spec/**/*_spec.rb" # don't need this, it's default.
  # Put spec opts in a file named .rspec in root
end


task :spec => :check_dependencies

task :default => :spec

#require 'rake/rdoctask'
#Rake::RDocTask.new do |rdoc|
#  version = File.exist?('VERSION') ? File.read('VERSION') : ""
#
#  rdoc.rdoc_dir = 'rdoc'
#  rdoc.title = "brown_shoes #{version}"
#  rdoc.rdoc_files.include('README*')
#  rdoc.rdoc_files.include('lib/**/*.rb')
##end
