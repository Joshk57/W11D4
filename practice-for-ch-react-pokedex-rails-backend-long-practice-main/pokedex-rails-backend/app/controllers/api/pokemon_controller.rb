class Api::PokemonController < ApplicationController

    def types
        render json: Pokemon::TYPES
    end

    def index
        @pokemon = Pokemon.all
        render json: @pokemon
    end

    def show
        @pokemon = Pokemon.find(params[:id])
        render json: @pokemon
    end


end
