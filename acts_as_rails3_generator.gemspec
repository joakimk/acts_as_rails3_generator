# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "acts_as_rails3_generator"
  s.version     = "0.0.1"
  s.authors     = ["Joakim Kolsjö"]
  s.email       = ["joakim.kolsjo@gmail.com"]
  s.homepage    = "http://github.com/joakimk/acts_as_rails3_generator"
  s.summary     = %q{Write Rails 2 generators with Rails 3 generator syntax.}
  s.description = %q{This is a wrapper that enables you to write your generator using the Rails 3 syntax but still support Rails 2.}
  s.files       = Dir.glob("lib/*") + %w(Gemfile acts_as_rails3_generator.gemspec CHANGELOG README.markdown LICENCE)
end

