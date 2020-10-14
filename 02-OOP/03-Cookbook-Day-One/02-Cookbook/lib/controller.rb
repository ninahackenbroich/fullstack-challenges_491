require_relative 'recipe'
require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    list_recipes
  end

  def create
    name = @view.ask_user_for_name
    description = @view.ask_user_for_description
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
    list_recipes
  end

  def destroy
    list_recipes
    index = @view.ask_user_for_index
    @cookbook.remove_recipe(index)
    list_recipes
  end

  private

  def list_recipes
    recipes = @cookbook.all
    @view.display(recipes)
  end
end
