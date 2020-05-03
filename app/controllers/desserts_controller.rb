class DessertsController < ApplicationController
  before_action :set_dessert, only: [:show, :edit, :update, :destroy]

  def index

  end

  def new

  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_dessert

  end

  def dessert_params
    params.require(:dessert).permit(:name, :price, :stock, :url, :image)
  end
end
