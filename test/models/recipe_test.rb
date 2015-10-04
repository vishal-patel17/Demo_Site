require 'test_helper'

class Recipe < ActiveSupport::TestCase

  def setup

  @recipe = Recipe.new(name: "Chicken parm",summary: "This is the best chicken parm
            ever",discription: "heat oil, add onion, add chicken, cook for 20 min")
  end

  test "recipe should be valid" do
    assert @recipe.valid?
  end

  test "name should be valid" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end

end
