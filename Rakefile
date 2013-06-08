require 'rubygems'
require 'rake'
require 'rspec/core/rake_task'
require 'puppet-lint/tasks/puppet-lint'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/*/*_spec.rb'
end

task :default => [:spec]

PuppetLint.configuration.ignore_paths =['modules/**/*']
PuppetLint.configuration.send("disable_80chars")
