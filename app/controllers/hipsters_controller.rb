class HipstersController < ApplicationController
  def index
    @hipster = Hipster.all
  end

  def new
    @hipster = Hipster.new
  end

  def create
    @hipster = Hipster.create
    redirect_to hipsters_path
  end

  def show
    @hipster = Hipster.find(params[:id])
  end

  def edit
  end

  def destroy
    @hipster = Hipster.find(hipster_params[:id])
    @hipster.destroy

    redirect_to hipsters_path
  end
end
