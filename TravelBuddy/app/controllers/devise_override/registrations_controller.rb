class DeviseOverride::RegistrationsController < Devise::RegistrationsController
  skip_before_filter  :verify_authenticity_token
  def create
    super # this calls Devise::RegistrationsController#create as usual
    # after creating a new user, create a profile that has
    # the profile.user_id field set to the user_id of the user jsut created
    if resource.save
        @user = resource.create_user
        @user.email = resource.email
        @user.first_name = resource.first_name
        @user.last_name = resource.last_name
        @user.phone = resource.phone
        @user.address = resource.address
        @user.save

    end
  end

  def destroy
    super
    # if resource.destroy
    #     @user = User.where(admin_id: resource.id).take
    #     @user.destroy
    # end
  end


  private

  def sign_up_params
    params.require(:admin).permit(:first_name, :last_name, :email, :phone, :address, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:admin).permit(:first_name, :last_name, :email, :phone, :address, :password, :password_confirmation, :current_password)
  end
end