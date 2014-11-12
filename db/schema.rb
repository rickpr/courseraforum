# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141111213742) do

  create_table "comments", force: true do |t|
    t.string   "user_id"
    t.string   "post_time"
    t.string   "deleted"
    t.string   "is_spam"
    t.string   "votes"
    t.string   "anonymous"
    t.string   "comment_text"
    t.string   "user_agent"
    t.string   "text_type"
    t.string   "_viewer_can_vote"
    t.string   "_viewer_can_edit"
    t.string   "_user_title"
    t.string   "_user_full_name"
    t.string   "_user_profile_link"
    t.string   "_user_email_address"
    t.string   "_user_search_link"
    t.string   "_user_details_link"
    t.string   "_show_signature_track_label"
    t.string   "link"
    t.string   "_reporter_link"
    t.integer  "post_id"
    t.integer  "fthread_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["fthread_id"], name: "index_comments_on_fthread_id"
  add_index "comments", ["post_id"], name: "index_comments_on_post_id"

  create_table "forums", force: true do |t|
    t.string   "parent_id"
    t.string   "name"
    t.string   "description"
    t.string   "ftype"
    t.string   "deleted"
    t.string   "can_post"
    t.string   "show_threads"
    t.string   "resolved_tag"
    t.string   "display_order"
    t.string   "open_time"
    t.string   "forum_moderators_only"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fthreads", force: true do |t|
    t.string   "user_id"
    t.string   "posted_time"
    t.string   "last_updated_time"
    t.string   "last_updated_user"
    t.string   "deleted"
    t.string   "is_spam"
    t.string   "stickied"
    t.string   "approved"
    t.string   "unresolved"
    t.string   "instructor_replied"
    t.string   "num_posts"
    t.string   "num_views"
    t.string   "votes"
    t.string   "locked"
    t.string   "anonymous"
    t.string   "title"
    t.string   "triage_sync_status"
    t.string   "triage_status"
    t.string   "private"
    t.string   "problem_id"
    t.string   "link"
    t.string   "_reporter_link"
    t.string   "_thread_can_be_resolved_without_triage"
    t.string   "_viewer_can_resolve_with_triage"
    t.string   "tags"
    t.string   "crumbs"
    t.string   "start_page"
    t.string   "num_pages"
    t.string   "_viewer_subscription"
    t.string   "_viewer_can_edit_title"
    t.string   "_viewer_can_resolve_without_triage"
    t.string   "_viewer_can_delete"
    t.string   "_viewer_can_toggle_private"
    t.integer  "forum_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fthreads", ["forum_id"], name: "index_fthreads_on_forum_id"

  create_table "posts", force: true do |t|
    t.string   "order"
    t.string   "user_id"
    t.string   "post_time"
    t.string   "edit_time"
    t.string   "deleted"
    t.string   "is_spam"
    t.string   "original"
    t.string   "stickied"
    t.string   "approved"
    t.string   "anonymous"
    t.string   "votes"
    t.string   "post_text"
    t.string   "user_agent"
    t.string   "text_type"
    t.string   "_viewer_can_vote"
    t.string   "_viewer_can_edit"
    t.string   "_user_title"
    t.string   "_user_full_name"
    t.string   "_user_profile_link"
    t.string   "_user_email_address"
    t.string   "_user_search_link"
    t.string   "_user_details_link"
    t.string   "_show_signature_track_label"
    t.string   "link"
    t.string   "_reporter_link"
    t.integer  "fthread_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["fthread_id"], name: "index_posts_on_fthread_id"

end
