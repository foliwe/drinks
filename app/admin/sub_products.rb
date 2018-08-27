ActiveAdmin.register SubProduct do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :name, :photo,:product_id

form do |f|
  f.inputs "Upload" do
    f.input :photo, required: true, as: :file
    f.input :name
    f.collection_select(:product_id, Product.all, :id, :name)
  end
  f.actions
end

end
