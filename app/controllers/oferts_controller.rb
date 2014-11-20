class OfertsController < ApplicationController
  
  def index
    @user=User.find(params[:user_id])
    @oferts=@user.oferts.order("created_at DESC")
  end

  def show

  end

  def new
    @producto= Producto.find(params[:producto_id])
    @ofert=Ofert.new()
  end

  def edit
    @ofert=Ofert.find(params[:id])
  end

  def create
    @producto=Producto.find(params[:producto_id])
    @ofert=Ofert.new(ofert_params)
    @ofert.user_id=current_user.id
    @ofert.producto_id = @producto.id
    if @ofert.save
      redirect_to @producto,notice:"Oferta Realizada exitosamente"
    else
      render "new"
    end
  end

  def update
   @dinero = params[:ofert][:dinero];
   @ofert = Ofert.find(params[:id]);
   @ofert.dinero = @dinero;
   @producto=Producto.find(@ofert.producto_id)
   if @ofert.save()
      redirect_to edit_user_registration_path, :notice => "Se ha modificado el dinero ofrecido";
   else
      render "edit";
   end
  end

  def destroy
  end

  private

    def ofert_params
      params.require(:ofert).permit(:motivacion, :dinero, :user_id, :producto_id)
    end
end
