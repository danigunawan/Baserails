require 'test_helper'
require 'generators/homepage/homepage_generator'

class HomepageGeneratorTest < Rails::Generators::TestCase
  tests HomepageGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
