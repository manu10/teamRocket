class Users::RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters, :only => [:create, :update, :new]
  before_action :set_user, only: [:edit, :update, :destroy]

 # GET /resource/sign_up


  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource


# def create
#     @user = Producto.new(user_params)
#     @user.save

#   end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # You can put the params you want to permit in the empty array.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.for(:sign_up) << :attribute
  # end

  # You can put the params you want to permit in the empty array.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
  protected
    def configure_permitted_parameters###Esto no es el problema################################
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :DNI, :phone, :birthDate, :password, :current_password, :password_confirmation, domicile_attributes: [:city, :street, :province, :country, :number], credit_cards_attributes: [:owner, :expireDate, :securityCode, :number])  }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :DNI, :phone, :birthDate, :current_password, :password, :password_confirmation, domicile_attributes: [:city, :street, :province, :country, :number], credit_cards_attributes: [:owner, :expireDate, :securityCode, :number])  }
 
    end

private
     def set_user
       @user = User.find(current_user.id)
     end
end
