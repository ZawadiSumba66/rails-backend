require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:users) { create_list(:user, 3) }
  let(:user_id) { users.first.id }

  # Test suite for GET /api/v1users
  describe 'GET /api/v1/users/:id' do
    before { get "/api/v1/users/#{user_id}" }
    context 'when a user exists' do
      it 'it returns the user' do
        result = JSON(response.body)
        expect(result).not_to be_empty
      end
      it 'returns the status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
