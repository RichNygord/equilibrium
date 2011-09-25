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

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "equilibrium"
  gem.homepage = "http://github.com/RichNygord/equilibrium"
  gem.license = "MIT"
  gem.summary = %Q{Find an index in an array such that its prefix sum equals its suffix sum.}
  gem.description = %Q{Find an index in an array such that its prefix sum equals its suffix sum.  A zero-indexed array A consisting of N integers is given. An equilibrium index of this array is any integer P such that 0 <= P < N and the sum of elements of lower indices is equal to the sum of elements of higher indices, i.e.
A[0] + A[1] + ... + A[P-1] = A[P+1] + ... + A[N-2] + A[N-1].
Sum of zero elements is assumed to be equal to 0. This can happen if P = 0 or if P = N-1.

For example, consider the following array A consisting of N = 7 elements:

A[0] = -7    A[1] =  1    A[2]=5
A[3] =  2    A[4] = -4    A[5]=3
A[6] =  0

P = 3 is an equilibrium index of this array, because A[0] + A[1] + A[2] = A[4] + A[5] + A[6].

P = 6 is also an equilibrium index, because: A[0] + A[1] + A[2] + A[3] + A[4] + A[5] = 0 and there are no elements with indices greater than 6.

P = 7 is not an equilibrium index, because it does not fulfill the condition 0 <= P < N.
}
  gem.email = "rvnygord@yahoo.com"
  gem.authors = ["Richard Nygord"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

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

require 'rdoc/task'
RDoc::Task.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "equilibrium #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
