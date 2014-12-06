class OfertsController < ApplicationController
  
  def index
    @user=User.find(params[:user_id])
    @oferts=@user.oferts.order("created_at DESC")
  end

  def show
    @ofert=Ofert.find(params[:id])
  end

  def new
    @producto= Producto.find(params[:producto_id])
    @ofert=Ofert.new()
    @control=Ofert.where(user_id: current_user.id, producto_id: @producto.id)
    if current_user.credit_card==nil
      current_user.credit_card=CreditCard.create()
    end
    
  end

  def edit
    @ofert=Ofert.find(params[:id])
  end

  def create
    @producto=Producto.find(params[:producto_id])
    @ofert=Ofert.new(ofert_params)
    @ofert.user_id=current_user.id
    @ofert.producto_id = @producto.id
    current_user.credit_card.owner=params[:owner]
    current_user.credit_card.number=params[:number]
    @expiredDate=Date.new(params[:date][:year].to_i,params[:date][:month].to_i,params[:date][:day].to_i)
    current_user.credit_card.expireDate=@expiredDate
    current_user.credit_card.securityCode=params[:securityCode]
    if current_user.credit_card.save && @ofert.save  
      redirect_to @producto,notice:"Oferta Realizada exitosamente"
    else
      @control=Ofert.where(user_id: current_user.id, producto_id: @producto.id)
      render "new"
    end
  end

  def update
   @dinero = params[:ofert][:dinero];
   @ofert = Ofert.find(params[:id]);
   @ofert.dinero = @dinero;
   @producto=Producto.find(@ofert.producto_id)
   if @ofert.save()
      redirect_to oferts_path(user_id:current_user.id), :notice => "Se ha modificado el dinero ofrecido";
   else
      render "edit";
   end
  end

  def destroy
  end

  def select_winner
    @ofert=Ofert.find(params[:id])
    Money.create(cash:@ofert.dinero )
    @user=@ofert.user
    UserMailer.info_winner(@user,@ofert).deliver
    UserMailer.you_win(@user,@ofert).deliver
    Producto.find(@ofert.producto_id).destroy()
  end

  private

    def ofert_params
      params.require(:ofert).permit(:motivacion, :dinero, :user_id, :producto_id)
    end
end
