class ProductosController < ApplicationController
  before_action :set_producto, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search] and params[:orden]
      @productos = Producto.search(params[:search]).order(params[:orden])
    else
#no se como ordenar los productos ya filtrados

      if params[:orden]
        @productos = Producto.order(params[:orden])
      else    
        @productos = Producto.order('created_at ASC')
      end
    end
  
  
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

    redirect_to productos_path 
  end

  def update
    @producto.update(producto_params)

    redirect_to productos_path 
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
      params.require(:producto).permit(:image, :fecha, :titulo, :descripcion, :vencimiento, :usuario_id, :UrlImage)
    end
end
