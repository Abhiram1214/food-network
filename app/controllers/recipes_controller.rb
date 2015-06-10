class RecipesController < ApplicationController
  
  def new
    @new_recipe = Recipe.new
  end
  
  def create
    @new_recipe = Recipe.create(new_recipe)
    redirect_to root    
  end
  
  def display
       @recipes = Recipe.first
  end
  
  def home
    @all_recipes = Recipe.all
  end
  
  private
  
    def new_recipe
        params.require(:recipe).permit(:avatar,:chef,:recipe,:ingredients,:description)
    end
end
