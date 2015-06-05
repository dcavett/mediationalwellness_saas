module UsersHelper
  
  def account_type_icon
    if current_user.plan_id == 1
      "<i class = 'fa fa-code'></i>".html_safe
    elsif current_user.plan_id = 2
      "<i class = 'fa fa-user'></i>".html_safe
    elsif current_user.plan_id = 3
      "<i class = 'fa fa-plus'></i>".html_safe
    end     
  end
end
