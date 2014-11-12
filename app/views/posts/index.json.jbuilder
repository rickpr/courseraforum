json.array!(@posts) do |post|
  json.extract! post, :id, :order, :user_id, :post_time, :edit_time, :deleted, :is_spam, :original, :stickied, :approved, :anonymous, :votes, :post_text, :user_agent, :text_type, :_viewer_can_vote, :_viewer_can_edit, :_user_title, :_user_full_name, :_user_profile_link, :_user_email_address, :_user_search_link, :_user_details_link, :_show_signature_track_label, :link, :_reporter_link, :fthread_id
  json.url post_url(post, format: :json)
end
