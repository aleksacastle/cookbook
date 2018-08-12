module Api
  class RecipeSerializer < ActiveModel::Serializer
    attributes :title, :body
  end
end
