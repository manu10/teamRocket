class ProductosController < ApplicationController
  before_action :set_producto, only: [:show, :edit, :update, :destroy]

  def index
    @productos = Producto.all 
  end
 

  def show
  end


  def new
    @producto = Producto.new
  end

  def edit
  end

  def create
    @producto = Producto.new(producto_params)
    @producto.save
  end

  def update
    @producto.update(producto_params)
  end

  def destroy
    @producto.destroy
    respond_with(@producto)
  end

  private
    def set_producto
      @producto = Producto.find(params[:id])
    end

    def producto_params
      params.require(:producto).permit(:image, :fecha, :titulo, :descripcion, :vencimiento, :usuario_id)
    end
end
