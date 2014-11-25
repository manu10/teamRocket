class AnswersController < ApplicationController

  def new
  	@producto=Producto.find(params[:producto_id])
  	@comment=Comment.find(params[:comment_id])
  	@answer=Answer.new()
  end

  def create
  	@comment=Comment.find(params[:comment_id])
  	@answer=Answer.new(answer_params)
  	@answer.comment_id=@comment.id
  	if @answer.save()
  		redirect_to producto_path(@comment.producto), notice:"El comentario ha sido respondido correctamente"
  	else
  		render 'new'
  	end
  end

  def destroy
  end

  private
  	def answer_params
  		params.require(:answer).permit(:content)
  	end
end
