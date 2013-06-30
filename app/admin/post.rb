ActiveAdmin.register Post do
  index do
    selectable_column
    column :id
    column :title
    column :published
    column(:published_at, sortable: :published_at) { |p| l(p.published_at, format: :nice) }
    default_actions
  end

  show do |post|
    attributes_table do
      row :id
      row :title
      row :author
      row(:html) { raw post.html }
      row :slug
      row :tag_list
      row :published
      row :published_at
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  form partial: 'posts/form'

end

