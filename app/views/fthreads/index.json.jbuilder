json.array!(@fthreads) do |fthread|
  json.extract! fthread, :id, :user_id, :posted_time, :last_updated_time, :last_updated_user, :deleted, :is_spam, :stickied, :approved, :unresolved, :instructor_replied, :num_posts, :num_views, :votes, :locked, :anonymous, :title, :triage_sync_status, :triage_status, :private, :problem_id, :link, :_reporter_link, :_thread_can_be_resolved_without_triage, :_viewer_can_resolve_with_triage, :tags, :crumbs, :start_page, :num_pages, :_viewer_subscription, :_viewer_can_edit_title, :_viewer_can_resolve_without_triage, :_viewer_can_delete, :_viewer_can_toggle_private, :forum_id
  json.url fthread_url(fthread, format: :json)
end
