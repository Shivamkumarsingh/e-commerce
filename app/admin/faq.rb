ActiveAdmin.register Faq do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :question,:answer
# or

# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
controller do

  def update
  
    update! do |format|
      format.html { redirect_to  edit_admin_faq  } 
    end
	end
end
end
