class CreateFthreads < ActiveRecord::Migration
  def change
    create_table :fthreads do |t|
      t.string :user_id
      t.string :posted_time
      t.string :last_updated_time
      t.string :last_updated_user
      t.string :deleted
      t.string :is_spam
      t.string :stickied
      t.string :approved
      t.string :unresolved
      t.string :instructor_replied
      t.string :num_posts
      t.string :num_views
      t.string :votes
      t.string :locked
      t.string :anonymous
      t.string :title
      t.string :triage_sync_status
      t.string :triage_status
      t.string :private
      t.string :problem_id
      t.string :link
      t.string :_reporter_link
      t.string :_thread_can_be_resolved_without_triage
      t.string :_viewer_can_resolve_with_triage
      t.string :tags
      t.string :crumbs
      t.string :start_page
      t.string :num_pages
      t.string :_viewer_subscription
      t.string :_viewer_can_edit_title
      t.string :_viewer_can_resolve_without_triage
      t.string :_viewer_can_delete
      t.string :_viewer_can_toggle_private
      t.references :forum, index: true

      t.timestamps
    end
  end
end
