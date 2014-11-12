require 'test_helper'

class FthreadsControllerTest < ActionController::TestCase
  setup do
    @fthread = fthreads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fthreads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fthread" do
    assert_difference('Fthread.count') do
      post :create, fthread: { _reporter_link: @fthread._reporter_link, _thread_can_be_resolved_without_triage: @fthread._thread_can_be_resolved_without_triage, _viewer_can_delete: @fthread._viewer_can_delete, _viewer_can_edit_title: @fthread._viewer_can_edit_title, _viewer_can_resolve_with_triage: @fthread._viewer_can_resolve_with_triage, _viewer_can_resolve_without_triage: @fthread._viewer_can_resolve_without_triage, _viewer_can_toggle_private: @fthread._viewer_can_toggle_private, _viewer_subscription: @fthread._viewer_subscription, anonymous: @fthread.anonymous, approved: @fthread.approved, crumbs: @fthread.crumbs, deleted: @fthread.deleted, forum_id: @fthread.forum_id, instructor_replied: @fthread.instructor_replied, is_spam: @fthread.is_spam, last_updated_time: @fthread.last_updated_time, last_updated_user: @fthread.last_updated_user, link: @fthread.link, locked: @fthread.locked, num_pages: @fthread.num_pages, num_posts: @fthread.num_posts, num_views: @fthread.num_views, posted_time: @fthread.posted_time, private: @fthread.private, problem_id: @fthread.problem_id, start_page: @fthread.start_page, stickied: @fthread.stickied, tags: @fthread.tags, title: @fthread.title, triage_status: @fthread.triage_status, triage_sync_status: @fthread.triage_sync_status, unresolved: @fthread.unresolved, user_id: @fthread.user_id, votes: @fthread.votes }
    end

    assert_redirected_to fthread_path(assigns(:fthread))
  end

  test "should show fthread" do
    get :show, id: @fthread
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fthread
    assert_response :success
  end

  test "should update fthread" do
    patch :update, id: @fthread, fthread: { _reporter_link: @fthread._reporter_link, _thread_can_be_resolved_without_triage: @fthread._thread_can_be_resolved_without_triage, _viewer_can_delete: @fthread._viewer_can_delete, _viewer_can_edit_title: @fthread._viewer_can_edit_title, _viewer_can_resolve_with_triage: @fthread._viewer_can_resolve_with_triage, _viewer_can_resolve_without_triage: @fthread._viewer_can_resolve_without_triage, _viewer_can_toggle_private: @fthread._viewer_can_toggle_private, _viewer_subscription: @fthread._viewer_subscription, anonymous: @fthread.anonymous, approved: @fthread.approved, crumbs: @fthread.crumbs, deleted: @fthread.deleted, forum_id: @fthread.forum_id, instructor_replied: @fthread.instructor_replied, is_spam: @fthread.is_spam, last_updated_time: @fthread.last_updated_time, last_updated_user: @fthread.last_updated_user, link: @fthread.link, locked: @fthread.locked, num_pages: @fthread.num_pages, num_posts: @fthread.num_posts, num_views: @fthread.num_views, posted_time: @fthread.posted_time, private: @fthread.private, problem_id: @fthread.problem_id, start_page: @fthread.start_page, stickied: @fthread.stickied, tags: @fthread.tags, title: @fthread.title, triage_status: @fthread.triage_status, triage_sync_status: @fthread.triage_sync_status, unresolved: @fthread.unresolved, user_id: @fthread.user_id, votes: @fthread.votes }
    assert_redirected_to fthread_path(assigns(:fthread))
  end

  test "should destroy fthread" do
    assert_difference('Fthread.count', -1) do
      delete :destroy, id: @fthread
    end

    assert_redirected_to fthreads_path
  end
end
