class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
   @producto= Producto.find(params[:producto_id])
   @comment=Comment.new()
  end

  def edit
    @producto = Producto.find(params[:producto_id])
    @comment = @producto.comments.find(params[:id])
    @mensaje = @comment.mensaje
  end

  def get
  end

  def create
     @producto = Producto.find(params[:producto_id])
    @comment = @producto.comments.new(comment_params)
    if user_signed_in? 
        @comment.user_id = current_user.id
    end
    if @producto.save
      redirect_to producto_path(@producto), notice:"se ha publicado tu comentario"
    else
      render "new"
    end
  end

  def update
   @mensaje = params[:comment][:mensaje];
   @producto = Producto.find(params[:producto_id]);
   @comment = Comment.find(params[:id]);
   @comment.mensaje = @mensaje;
   if @comment.save()
      redirect_to producto_path(@producto), :notice => "El comentario ha sido modificado";
   else
      render "edit";
   end
end

  def destroy
    @producto = Producto.find(params[:producto_id])
    @comment = @producto.comments.find(params[:id])
    if @comment.destroy
        redirect_to producto_path(@producto), notice:"se ha eliminado tu comentario"
    else
        render "destroy"
    end
  end

def answer
    @producto = Producto.find(params[:producto_id])
    @comment = @producto.comments.find(params[:id])
    @mensaje = @comment.respuesta
end
private
  def comment_params
      params.require(:comment).permit(:user_id, :mensaje, :respuesta, :producto_id)
  end
end
