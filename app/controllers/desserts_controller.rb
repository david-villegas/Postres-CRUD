class DessertsController < ApplicationController
  layout 'dessert'
  before_action :set_dessert, only: [:show, :edit, :update, :destroy]

  def index
    @postres = Dessert.paginate(page: params[:page], per_page: 5)
  end

  def new
    @postre = Dessert.new
  end

  def create
    @postre = Dessert.new(dessert_params)
    respond_to do |format|
      if @postre.save
        format.html {redirect_to dessert_path(@postre), notice: "Postre agregado correctamente"}
      else
        format.html {render :new, alert: "Falló el registro del postre, intente nuevamente"}
      end
    end
  end

  def show

  end

  def edit

  end

  def update
    respond_to do |format|
      if @postre.update(dessert_params)
        format.html {redirect_to dessert_path(@postre), notice: "Postre Actualizado correctamente"}
      else
        format.html {render :edit, alert: "Falló la actualización del postre, intente nuevamente"}
      end
    end
  end

  def destroy
    respond_to do |format|
      if @postre.destroy
        format.html {redirect_to desserts_path, notice: "Postre eliminado correctamente"}
      else
        format.html {redirect_to desserts_path, alert: "No fue posible eliminar el Postre"}
      end
    end
  end

  private

  def set_dessert
    @postre = Dessert.find(params[:id])
  end

  def dessert_params
    params.require(:dessert).permit(:name, :price, :stock, :url, :image)
  end
end
