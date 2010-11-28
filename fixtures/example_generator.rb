require 'acts_as_rails3_generator'

class ExampleGenerator < Rails::Generators::Base
  
  source_root File.expand_path('../templates', __FILE__)

  class_option :project, :type => :string, :default => nil, :desc => "The name of your project" 

  def generate_config
    template "example.yml.erb", "config/example.yml"
  end

end
