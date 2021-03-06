module Api
  module V1
    class TipsController < ApiController
      skip_before_action :authenticate_user!
      def index
        tips = Tip.all
        render json: tips, status: 200
      end

      def create
        image = params[:tip][:image]
        params = tip_params.except(image)
        tip = current_user.tips.create(params)
        tip.image.attach(image) if image.present?
        url = Tip.image_url(tip.image)
        if tip.save
          render json: { tip: tip, tip_url: url }, status: 200
        else
          render json: { message: tip.errors.full_messages }, status: 400
        end
      end

      def show
        tip = Tip.find(params[:id])
        url = Tip.image_url(tip.image)
        if tip
          render json: { tip: tip, tip_url: url  }, status: 200
        else
          render json: { message: 'No tip found' }, status: 400
        end
      end

      def favorite
        if current_user.favorites.exists?(tip_id: params[:tip_id])
          render json: { message: 'Tip has already been added to favorites' }, status: :forbidden
        else
          tip = Tip.find(params[:tip_id])
          current_user.favorited_tips << tip
          render json: { message: 'Tip successfully added to favorites' }
        end
      end

      def unfavourite
        favorite = current_user.favorites.find_by(tip_id: params[:tip_id])
        favorite&.delete
        render json: { message: 'Successfuly removed' }
      end

      private

      def tip_params
        params.require(:tip).permit(:title, :description, :benefits, :instructions, :image)
      end
    end
  end
end