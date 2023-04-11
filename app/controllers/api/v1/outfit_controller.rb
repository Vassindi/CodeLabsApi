class OutfitController < ApplicationController

    before_action :set_outfit, only: [:show, :update, :destroy]

    def index
        outfits = outfit.all

        render json: outfits
    end

    def show
        render json: outfit.find(params[:id])
    end

    def create
        outfit = outfit.new(outfit_params[:id])

        if @outfit.save
            render json: @outfit, status: :created, location: @outfit
        else
            render json: {errors: outfit.errors}, status: :unprocessable_entity
        end
    end

    def update
        outfit = outfit.find(params[:id])

        if outfit.update()
            render json: outfit, status: :ok
        else
            render json: {errors: outfit.errors}, status: :unprocessable_entity
        end
    end

    def destroy
        outfit = Resource.find(params[:id])
        outfit.destroy
        render json: {message: "Outfit deleted"}, status: :ok
    end
end