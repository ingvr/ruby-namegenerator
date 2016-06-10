require 'minitest/autorun'
require_relative 'script.rb'

class TestNameGenerate < Minitest::Test
 def setup
  @generator = Name.new
  @name = @generator.generate
 end

 def test_name_should_be_valid
  assert (@name.length >= 2 && @name.length <= 12), "Should be 2-12 characters"
  assert_instance_of String, @name, "Should be a String type"
  assert @name.capitalize==@name, "Should be Capitalized"
  assert @name =~ /^[A-Z][a-z]+$/, "Should contain only letters"
 end
end

