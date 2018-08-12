module Api::V1
	class RecipesController < Api::BaseController
		def index
			render json: recipes, each_serializer: RecipeSerializer
		end

		private

		def recipes
			Recipe.all
		end
	end
end