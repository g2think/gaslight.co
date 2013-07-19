ActiveAdmin.register Post do
  config.sort_order = 'published_at_desc'

  controller do
    defaults finder: :find_by_slug
  end

  index do
    selectable_column
    column :id
    column(:title) { |p| link_to(p.title, p) }
    column :author
    column :published
    column(:published_at, sortable: :published_at) { |p| l(p.published_at, format: :nice) unless p.published_at.nil? }
    default_actions
  end

  show do |post|
    attributes_table do
      row :id
      row :title
      row :author
      row(:html) { raw post.html }
      row :to_param
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

