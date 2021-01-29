module Api
    module V1
      class EnseignesController < ApplicationController
        def index
          enseignes = Enseigne.all
          render json: EnseigneSerializer.new(enseignes).serialized_json
        end

        def show
          enseigne = Enseigne.find_by(label: params[:label])
          render json: EnseingeSerializer.new(enseigne).serialized_json
        end

        def create
          enseigne = Enseigne.new(enseigne_params)
          
          if enseigne.save
            render json: Enseigne.new(enseigne).serialized_json
          else
            render json: { error: enseigne.errors.messages }, status: 422
          end
        end

        def update
          enseigne = Enseigne.find_by(label: params[:label])
          if enseigne.update(enseigne_params)
            render json: EnseigneSerializer.new(enseigne).serialized_json
          else
            render json: { error: enseigne.errors.messages }, status: 422
          end
        end

        def destroy
          enseigne = Enseigne.find_by(label: params[:label])
          if enseigne.destroy
            head :no_content
          else
            render json: { errors: enseigne.errors }, status: 422
          end
        end

        private

        def enseinge_params
          params.require(:enseigne).permit(:name, :image)

        def options
          @options ||= { include: %i[reviews] }
        end
      end
    end
  end