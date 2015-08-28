require "bundler/gem_tasks"
require 'rake/testtask'

task :default => [:specs]

desc "Run specs"
task :specs do
  sh 'ruby -I lib spec/test.rb'
end
