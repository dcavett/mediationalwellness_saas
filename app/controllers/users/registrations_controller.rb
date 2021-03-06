class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :select_plan, only: :new
#  before_filter :configure_permitted_params
 
#  def create
#    super do |resource|
#      if params[:plan]
#        resource.plan_id = params[:plan] 
#          if resource.plan_id == 1
#            resource.save_with_payment #add 'save_with_payment' to add in charging capabilities
#          else
#            resource.save
#          end
#        end
#      end
#   end

  private
    def select_plan
      unless params[:plan] && (params[:plan] == '1' || params[:plan] == '2')
        flash[:notice] = "Please select a plan to sign up"
        redirect_to root_url
      end
    end
  
#    def configure_permitted_params
#      devise_parameter_sanitizer.for(:plan) do |u|
#        u.permit(:full_name,
#          :email, :password, :password_confirmation, :terms)
#      end 
#    end
end