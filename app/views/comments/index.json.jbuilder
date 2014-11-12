json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_id, :post_time, :deleted, :is_spam, :votes, :anonymous, :comment_text, :user_agent, :text_type, :_viewer_can_vote, :_viewer_can_edit, :_user_title, :_user_full_name, :_user_profile_link, :_user_email_address, :_user_search_link, :_user_details_link, :_show_signature_track_label, :link, :_reporter_link, :post_id, :fthread_id
  json.url comment_url(comment, format: :json)
end
