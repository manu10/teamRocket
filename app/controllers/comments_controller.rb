class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
   @comment=Comment.new
  end

  def edit
    
  end

  def get
  end

  def create
     @producto = Producto.find(params[:producto_id])
    @comment = @producto.comments.create(comment_params)
    redirect_to producto_path(@producto)
  end

  def update
  end

  def destroy
  end

  def comment_params
      params.require(:comment).permit(:user_id, :mensaje, :respuesta, :producto_id)
  end
end
