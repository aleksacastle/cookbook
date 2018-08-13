require 'rails_helper'

describe 'api/v1/recipes', type: :request do
	describe 'index' do
		it 'returns correct response' do
			recipe = create(:recipe)
			get "/api/v1/recipes"

			expect(response).to have_http_status(:success)
			expect(response.content_type).to eq('application/json')

			json_body = JSON.parse(response.body)

			expect(json_body.count).to eq(1)
			expect(json_body[0]['title']).to eq("Recipe")
			expect(json_body[0]['body']).to eq(recipe.body)
		end
	end
end