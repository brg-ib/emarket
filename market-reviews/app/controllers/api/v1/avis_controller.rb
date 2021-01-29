module Api
    module V1
      class AvisController < ApplicationController
        def create
          avis = Avi.new(avis_params)
          if avis.save
            render json: AviSerializer.new(avis).serialized_json
          else
            render json: { errors: avis.errors.messages }, status: 422
          end
        end
        
        def destroy
          avis = Avis.find(params[:id])
          if avis.destroy
            head :no_content
          else
            render json: { errors: avis.errors.messages }, status: 422
          end
        end

        private
        
        def avis_params
          params.require(:avis).permit(:title, :description, :score, :enseigne_id)
        end
      end
    end
  end