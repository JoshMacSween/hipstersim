class HipstersController < ApplicationController
  def index
    @hipster = Hipster.all
  end

  def new
    @hipster = Hipster.new
  end

  def create
    @hipster = Hipster.create(hipster_params)
    redirect_to new_hipsters_path
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
end
