class ProductosController < ApplicationController
  before_action :set_producto, only: [:show, :edit, :update, :destroy]

  def index
    @productos=Producto.order(sort_column + ' ' + sort_direction)
  
  end
  

  def show
  end

  def new
    @producto = Producto.new
  end

  def edit
  end
  
  def get

  end

  def create
    @producto = Producto.new(producto_params)
    @producto.save
  end

  def update
    @producto.update(producto_params)
  end

  def destroy
    if @producto.destroy
    redirect_to productos_path 
    end
  end

  private
    def set_producto
      @producto = Producto.find(params[:id])
    end

    def producto_params
      params.require(:producto).permit(:image, :fecha, :titulo, :descripcion, :vencimiento, :usuario_id)
    end

     def sort_column
    params[:sort] || "titulo"
  end
  
  def sort_direction
    params[:direction] || "asc"
  end
end
