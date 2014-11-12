class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_id
      t.string :post_time
      t.string :deleted
      t.string :is_spam
      t.string :votes
      t.string :anonymous
      t.string :comment_text
      t.string :user_agent
      t.string :text_type
      t.string :_viewer_can_vote
      t.string :_viewer_can_edit
      t.string :_user_title
      t.string :_user_full_name
      t.string :_user_profile_link
      t.string :_user_email_address
      t.string :_user_search_link
      t.string :_user_details_link
      t.string :_show_signature_track_label
      t.string :link
      t.string :_reporter_link
      t.references :post, index: true
      t.references :fthread, index: true

      t.timestamps
    end
  end
end
