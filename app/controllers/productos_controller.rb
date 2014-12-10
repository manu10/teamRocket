class ProductosController < ApplicationController
  before_action :set_producto, only: [:show, :edit, :update, :destroy, :indexOferts]

  def index

     if params[:search]
    @productos = Producto.where("vencimiento >= :today ",{:today => Date.today}).search(params[:search]).order("created_at DESC").paginate(page: params[:page], :per_page => 3)
  else

    @productos=Producto.where("vencimiento >= :today ",{:today => Date.today}).order(sort_column + ' ' + sort_direction).paginate(page: params[:page], :per_page => 3)



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
    
     if @producto.save
      redirect_to(productos_path , notice:"se ha Creado correctamente tu subasta")
    else 
      render :new
    end

  end

  def update
    if @producto.update(producto_params)
      redirect_to(productos_path , notice:"se ha actualizado correctamente tu subasta")
    else 
      render :edit
    end
  
  
    


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

  def indexOferts
    @oferts=@producto.oferts.order("created_at DESC")
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
