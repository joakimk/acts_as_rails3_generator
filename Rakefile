require 'bundler'
require 'cucumber'
require 'cucumber/rake/task'

Bundler::GemHelper.install_tasks

task :default => [ :features ] do
end

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format progress"
end
