class ProductosController < ApplicationController
  before_action :set_producto, only: [:show, :edit, :update, :destroy]

  def index

     if params[:search]
    @productos = Producto.search(params[:search]).order("created_at DESC").paginate(page: params[:page], :per_page => 3)
  else

    @productos=Producto.order(sort_column + ' ' + sort_direction).paginate(page: params[:page], :per_page => 3)

  end

  end
  

  def show
   @producto = Producto.find(params[:id]);
   @comment=Comment.new()
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
    @producto.user_id=current_user.id
    @producto.save

    redirect_to productos_path 
  end

  def update
  @producto.update(producto_params)
  
    redirect_to productos_path 


  #    if @producto.vencimiento <= Date.today
      
  #     flash[:notice]="No se puede vencer antes que hoy"
  #     redirect_to producto
  #   else
  #   @producto.update(producto_params)
  # end
  #   redirect_to productos_path 
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
      params.require(:producto).permit(:titulo, :descripcion, :vencimiento, :usuario_id,:category_id, :UrlImage)
    end

     def sort_column
    params[:sort] || "titulo"
  end
  
  def sort_direction
    params[:direction] || "asc"
  end
end
