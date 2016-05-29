require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task default: :spec


desc 'Open an irb session preloaded with this library'
task :console do
  #BATTLE_NET_REGION=eu BATTLE_NET_LOCALE=ru_RU BATTLE_NET_KEY=key 
  sh 'irb -rubygems -I lib -r wowrb.rb'
end
