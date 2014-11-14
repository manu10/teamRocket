class DomicilesController < ApplicationController

 before_action :set_domicile only: [:edit, :update, :destroy]

    def show
  end

  def new
    @domicile = Domicile.new
  end

  def edit
  end
  
  def get

  end

  def create
    @domicile = Domicile.new(domicile_params)
    @domicile.save
  end

  def update
    @domicile.update(domicile_params)

    redirect_to domiciles_path 
  end

  def destroy
    @domicile.destroy
    
  end

  private
    def set_domicile
      @domicile = Domicile.find(params[:id])
    end

    def domicile_params
      params.require(:domicile).permit(:city, :street, :province, :country, :number)
    end

end
