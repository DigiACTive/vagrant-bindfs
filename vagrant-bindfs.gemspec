# -*- encoding: utf-8 -*-
$:.unshift File.expand_path("../lib", __FILE__)
require "vagrant-bindfs/version"

Gem::Specification.new do |s|
  s.name        = "vagrant-bindfs"
  s.version     = VagrantPlugins::Bindfs::VERSION
  s.license     = "MIT"
  s.authors     = ["Gaël-Ian Havard", "Igor Serebryany"]
  s.email       = ["gaelian.havard@gmail.com", "igor.serebryany@airbnb.com"]
  s.homepage    = "https://github.com/gael-ian/vagrant-bindfs"
  
  s.summary     = "A Vagrant plugin to automate bindfs mount in the VM"
  s.description = "A Vagrant plugin to automate bindfs mount in the VM. This allow you to change owner, group and permissions on files and, for example, work around NFS share permissions issues."

  s.files = Dir['lib/**/*.rb'] + Dir['locales/*.yml'] + ['README.md', 'MIT-LICENSE']
end
