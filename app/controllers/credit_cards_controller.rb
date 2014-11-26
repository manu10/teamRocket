class CreditCardsController < ApplicationController
=begin
before_action :set_credit_card, only: [:edit, :update, :destroy]
=end

def update
	@credit_card = current_user.credit_card
    @credit_card.update(credit_card_params)

end
private
	def set_credit_card 
      @credit_card = CreditCard.find(current_user.credit_card.id)
    end
    def credit_card_params
      params.require(:domicile).permit(:owner, :expireDate, :securityCode , :number)
    end
end
