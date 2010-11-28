module ActsAsRails3Generator 

  @@class_options = {}

  def self.included(base)
    base.send :cattr_accessor, :class_options
    base.send :extend, ClassMethods
  end

  module ClassMethods
    def class_option(name, opts)
      class_options[name] = opts
    end

    def source_root(path)
    end

    def acts_as_rails3_generator
      send :include, InstanceMethods
    end
  end

  module InstanceMethods
    def add_options!(opt)
      class_options.each { |key, opts|
        opt.on("--#{key} VALUE", opts[:desc]) { |v| options[key] = v }
      }
    end

    def template(template, target)
      @templates ||= []
      @templates << [ template, target ]
    end

    def manifest
      # TODO: Lookup of methods defined in the generator and calling them
      generate_config

      record do |m|
        @templates.each { |template, target| m.template(template, target)  }
      end
    end

  end
end

unless defined?(Rails::Generators::Base)
  Rails::Generator::Base.send :include, ActsAsRails3Generator 
  module Rails
    module Generators
      class Base < Rails::Generator::Base
        acts_as_rails3_generator
      end
    end
  end
end

