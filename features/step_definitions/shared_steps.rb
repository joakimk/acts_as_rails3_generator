Given /^I have a rails 2 app$/ do
  system "rm -rf tmp; mkdir -p tmp; cd tmp; rails app &> /dev/null"
end

Given /^I have acts_as_rails3_generator and example generators installed$/ do
  system "ln -s #{Dir.pwd} tmp/app/vendor/plugins/acts_as_rails3_generator"
  system "mkdir -p tmp/app/lib/generators/example"
  system "cp -rf fixtures/* tmp/app/lib/generators/example"
end

Given /^I run "([^"]*)"$/ do |cmd|
  system "cd tmp/app; #{cmd} &> /dev/null"
end

Then /^there should be a file named "([^"]*)"$/ do |path|
  File.exists?("tmp/app/#{path}") || raise("#{path} does not exist.")
end

Then /^the "([^"]*)" file should contain "([^"]*)""$/ do |path, contents|
  File.read("tmp/app/#{path}").include?(contents) || raise("Did not include #{contents}")
end
