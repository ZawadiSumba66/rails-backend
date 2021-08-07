class Api::V1::FavoritesController < ApiController
    def index
      favorites = current_user.favorited_tips
      render json: favorites, status: 200
    end
end
  