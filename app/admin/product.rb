ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name,:cost_price,:sale_price,:quantity,:image,:category_id,:brand_id
 index do
    
  column :name
  column :sale_price
  column :quantity
  column :category
  column  :brand 
actions
end
form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:medium))
    f.input :name
    f.input :sale_price
    
    f.input :quantity
      f.input :category
      f.input :brand 

  end
  f.actions
 end
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
