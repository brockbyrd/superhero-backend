class CharactersController < ApplicationController

    def index
        characters = Character.all
        render json: characters
    end

    def create
        character = Character.create(character_params)
        render json: character
    end

    private

    def character_params
        params.require(:character).permit(:id, :name, :intelligence, :strength, :speed, :durability, :power, :combat, :race, :gender, :height, :weight, :fullName, :alignment, :occupation, :groups, :universe, :image1)
    end


end
