class CategoriesController < ApplicationController

	before_action :new, only:[:create];
	before_action :get_category, only:[:show, :edit, :update, :destroy];

	def get_category
		@category = Category.find(params[:id])
	end

	def index
		@categories = Category.order("name asc")
	end

	def show
		@productos = @category.productos.order(sort_column + ' ' + sort_direction).paginate(page: params[:page], :per_page => 3)
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.create(category_params)
		redirect_to categories_path
	end

	def edit
	end

	def update
		@category.update(category_params)
		redirect_to categories_path
	end

	def destroy
		@category.destroy
		redirect_to categories_path
	end

	private
		def category_params
			params.require(:category).permit([:name])
		end

		def sort_column
			params[:sort] || "titulo"
		end

		def sort_direction
			params[:direction] || "asc"
		end

end
