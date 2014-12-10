class MoneyController < ApplicationController
  def create
  	@money=Money.new(money_params)
    @money.save
  end

  private
    def ofert_params
      params.require(:money).permit(:cash,:user,:product)
    end
end
