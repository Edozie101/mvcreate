#coding: utf-8
# expand_path gives the Absolute Path of the relative path of "../lib" and the current file
# __file__ is a reference to the current file name

library = File.expand_path("../lib", __FILE__)
#$LOAD_PATH is synonomous with  $: this is for scripts and binary modules by load or require
#unshift lib prepends the absolute path to the loadpath unless it already has prepended it
$LOAD_PATH.unshift(library) unless $LOAD_PATH.include?(library)
require 'mvcreate/version'
Gem::Specification.new do |spec|
  #name
  spec.name = "mvcreate"
  #version
  spec.version = Mvcreate::VERSION
  #authors
  spec.authors = ["Edozie Izegbu"]
  #email
  spec.email = ["edzye101@gmail.com"]
  #summary
  spec.summary = %q{This Gem is going to allow you to simply create a lightweight mvc framework}
  #description
  spec.description = %q{Longer description of your project.}
  #homepage
  spec.homepage = "http://gems.zegdev.com"
  #license
  spec.license = "MIT"


  #files
  spec.files = `git ls-files`.split($/)
  #executable binaries
  #we are taking all of the files in the git folder 
  spec.executables = spec.files.grep(%r(^bin/)) {|f| File.basename(f)}
  #test files
  spec.test_files = ["tests/test_mvcreate.rb"]
  #require paths
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~ 1.3"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency = "rack"
  end
