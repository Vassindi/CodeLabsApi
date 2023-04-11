class CharacterController < ApplicationController
    before_action :set_character, only: [:show, :update, :destroy]

    def index
        characters = Character.all

        render json: characters
    end

    def show
        render json: Character.find(params[:id])
    end

    def create
        character = character.new(character_params[:id])

        if @character.save
            render json: @character, status: :created
        else
            render json: {errors: character.errors}, status: :unprocessable_entity
        end
    end

    def update
        character = character.find(params[:id])

        if character.update()
            render json: character, status: :ok
        else
            render json: {errors: character.errors}, status: :unprocessable_entity
        end
    end

    def destroy
        character = Resource.find(params[:id])
        character.destroy
        render json: {message: "Character deleted"}, status: :ok
    end


end