class CreditCardsController < ApplicationController


=begin
DEBO PONER EL BEFORE ACTION PERO ME TIRA ERROR NO SE PORQUE
=end



def show

	
end
  def new
    @credit_card=CreditCard.create(user_id:current_user.id)
    redirect_to edit_user_registration_path
  end
  def edit
  	
  end
  def get
  end


def update
  @credit_card=CreditCard.find(params[:id])
	@credit_card=CreditCard.update(credit_card_params)
end
  

  def destroy
    @credit_card=CreditCard.find(params[:id])
    @credit_card.destroy
    redirect_to edit_user_registration_path
  end
private



  def credit_card_params
      params.require(:credit_cards).permit(:owner, :expireDate, :securityCode, :number)
    end
end
