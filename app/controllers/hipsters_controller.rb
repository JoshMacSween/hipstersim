# frozen_string_literal: true

class HipstersController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  def index
    @hipster = Hipster.all
  end

  def new
    @hipster = Hipster.new
  end

  def create
    @hipster = Hipster.new
    @hipster.assign_attributes(hipster_params)
    @hipster.save
    redirect_to hipsters_path
  end

  def show
    @hipster = Hipster.find(params[:id])
  end

  def edit
    @hipster = Hipster.find(params[:id])
  end

  def update
    @hipster = Hipster.find(params[:id])
    @hipster.update(hipster_params)

    redirect_to hipster_path(@hipster)
  end

  def destroy
    @hipster = Hipster.find(params[:id])
    @hipster.destroy

    redirect_to hipsters_path
  end

  private

  def hipster_params
    params.require(:hipster).permit(:name, :beer, :coffee, :quote, :hipster_id,
                                    things_attributes: %i[id title category color])
  end
end
