module Api
  module V1
    class UsersController < ApiController
      skip_before_action :authenticate_user!

      def create
        # if params[:user][:email].nil?
        #   render json: { message: ['User request must contain the user email.'] }, status: 400
        #   return
        # elsif params[:user][:password].nil?
        #   render json: { message: ['User request must contain the user password.'] }, status: 400
        #   return
        # end

        # if params[:user][:email]
        #   duplicate_user = User.find_by_email(params[:user][:email])
        #   unless duplicate_user.nil?
        #     render json: { message: ['Duplicate email. A user already exists with that email address.'] }, status: 409
        #     return
        #   end
        # end
        user = User.create(user_params)
        if user.save
          render json: { token: JsonWebToken.encode(sub: user.id) }, status: 200
        else
          render json: { message: user.errors.full_messages }, status: 400
        end
      end

      def show
        user = User.find(params[:id])
        favorites = user.favorited_tips
        response = { user: user, favorites: favorites }
        render json: response
      end

      def edit
        User.find_by(params[:id])
      end

      def update
        user = User.find(params[:id])
        if user.update(user_params)
          render json: { user: user }, status: 200
        else
          render json: { message: 'User was not updated!' }, status: 400
        end
      end

      private

      def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
      end
    end
  end
end
