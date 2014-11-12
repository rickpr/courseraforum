class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :parent_id
      t.string :name
      t.string :description
      t.string :ftype
      t.string :deleted
      t.string :can_post
      t.string :show_threads
      t.string :resolved_tag
      t.string :display_order
      t.string :open_time
      t.string :forum_moderators_only

      t.timestamps
    end
  end
end
