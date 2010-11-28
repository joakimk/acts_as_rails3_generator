Feature: Rails 2 generator with rails 3 syntax

  Scenario: Running a generator with options and templates
    Given I have a rails 2 app
    And I have acts_as_rails3_generator and example generators installed
    And I run "script/generate example --project foo"
    Then there should be a file named "config/example.yml" 
    And the "config/example.yml" file should contain "project: foo""

