ActiveAdmin.register Organization do
  menu priority: 1
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :description, :kind, :location
  #
  # or
  #
  index do
    selectable_column
    column :name
    column :kind
    column :location
    column :display_image
    actions
  end

  permit_params do
    permitted = [:name, :description, :kind, :location, :display_image]
    permitted << :other if params[:action] == 'create' && current_admin_user
    permitted
  end
  
end
