class Users::RegistrationsController < Devise::RegistrationsController
  
  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan] 
        if resource.plan_id == 2
          resource.save #add 'save_with_payment' to add in charging capabilities
        else
          resource.save
        end
    end
  end
  
end