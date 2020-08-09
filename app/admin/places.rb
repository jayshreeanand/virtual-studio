ActiveAdmin.register Place do
  menu priority: 4
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :organization_id, :title, :description, :content
  #
  # or
  #
  permit_params do
    permitted = [:organization_id, :title, :description, :content]
    permitted << :other if params[:action] == 'create' && current_admin_user
    permitted
  end
  
end
