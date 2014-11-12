json.array!(@forums) do |forum|
  json.extract! forum, :id, :parent_id, :name, :description, :ftype, :deleted, :can_post, :show_threads, :resolved_tag, :display_order, :open_time, :forum_moderators_only
  json.url forum_url(forum, format: :json)
end
