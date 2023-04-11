class CostumeController < ApplicationController

    before_action :set_costume, only: [:show, :update, :destroy]

    def index
        costumes = costume.all

        render json: costumes
    end

    def show
        render json: costume.find(params[:id])
    end

    def create
        costume = costume.new(costume_params[:id])

        if @costume.save
            render json: @costume, status: :created
        else
            render json: {errors: costume.errors}, status: :unprocessable_entity
        end
    end

    def update
        costume = costume.find(params[:id])

        if costume.update()
            render json: costume, status: :ok
        else
            render json: {errors: costume.errors}, status: :unprocessable_entity
        end
    end

    def destroy
        costume = Resource.find(params[:id])
        costume.destroy
        render json: {message: "Costume deleted"}, status: :ok
    end
end