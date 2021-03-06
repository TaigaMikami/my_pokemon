# frozen_string_literal: true

module Api::V1
  class PokemonsController < ApplicationController
    def index
      pokemons = Pokemon.all
      render json: { status: :ok, data: pokemons }
    end

    def show
      pokemon = Pokemon.find(params[:id])
      render json: { status: :ok, data: { pokemon: pokemon, types: pokemon.types.pluck(:name) } }
    end
  end
end
