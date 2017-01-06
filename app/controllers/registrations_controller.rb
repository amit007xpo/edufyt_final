class RegistrationsController < Devise::RegistrationsController
 def new
 	@user = User.new
 end
 
  def update
    @user.update(account_update_params)
    redirect_to root_path
  end

 private

  def sign_up_params
    params.require(:user).permit(:name, :mobile, :email, :password, :password_confirmation)
  end
 
  def account_update_params
    params.require(:user).permit(:email, :avatar)
  end 
  #def account_update_params
   # params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  #end
end

