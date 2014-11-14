class CreditCardsController < ApplicationController

before_action :set_credit_card only: [:edit, :update, :destroy]

def show

	
end
  def new
  @credit_card=CreditCard.new
  end
  def edit
  	
  end
  def get
  end


  def create
  	@credit_card=CreditCard.new(credit_card_params)
  	@credit_card.save
  	  end
def update
	@credit_card=CreditCard.update(credit_card_params)
end
  
  def destroy
  	@credit_card.destroy
  	
  end
private

def set_credit_card
  	@credit_card=CreditCard.find(params[:id])
  end

  def credit_card_params
      params.require(:credit_cards).permit(:owner, :expireDate, :securityCode, :number)
    end
end
