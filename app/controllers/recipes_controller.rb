class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
    3.times {@recipe.ingredients.build}
    3.times {@recipe.directions.build}
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      respond_to do |format|
        format.html { redirect_to root_path, notice: "New recipe created: #{@recipe.name}"}
      end
    else
      redirect_to new_recipe_path
    end
  end

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])

    # I'm loading these so that the ingredients and directions appear
    # in the right order (order entered) on the listing.
    @ingredients = @recipe.ingredients.order(:id)
    @directions = @recipe.directions.order(:id)
  end
  
  private

  def recipe_params()

    # This is the magic where the various nested attributes are used
    # to build the entire recipe with multiple ingredients and
    # direction steps.

    params.require(:recipe).permit(:name,
                                   :notes,

                                   # nested ingredients, vetting all
                                   # the fields
                                   # testing what happens when the nested params aren't permitted
                                   # ingredients_attributes: [:quantity, :measure, :name],
                                   # When omitted like this, the ingredients entered are not saved,
                                   # and there is no indication.

                                   # nested directions, vetting the
                                   # single field
                                   directions_attributes: [:step]
                                   )
  end



end
