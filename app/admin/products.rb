ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 # permit_params :list, :of, :attributes, :on, :model

 # or
permit_params :name, :gram, :description, :product_category_id,:image
 form partial: 'form'

 show do
    attributes_table do
      row :name
      row :product_category
      row :description
      row :image do |ad|
        image_tag url_for(ad.image)
      end
    end
  end

  form do |f|
    f.inputs "Upload" do
      f.input :image, required: true, as: :file
      f.input :name
      f.collection_select(:product_category_id, ProductCategory.all, :id, :name)
      f.input :description


    end
    f.actions
  end
end
