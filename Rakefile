# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "i18n_yaml_sorter"
    gem.license = "MIT"
    gem.summary = %Q{ A I18n YAML deep sorter that will keep your locales organized and not screw up your text formating }
    gem.description = %Q{ Allows you to deep sort YAML files that are mainly composed of 
      nested hashes and string values. Great to sort your rails I18n YAML files. You can easily
      add it to a textmate bundle, rake task, or just use the included regular comand line tool. 
    }
    gem.email = "berpasan@gmail.com"
    gem.homepage = "http://github.com/redealumni/i18n_yaml_sorter"
    gem.authors = ["Bernardo de Pádua"]    
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings    
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
  test.rcov_opts << '--exclude "gems/*"'
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "i18n_yaml_sorter #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
