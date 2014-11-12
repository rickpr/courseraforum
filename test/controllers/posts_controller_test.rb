require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: { _reporter_link: @post._reporter_link, _show_signature_track_label: @post._show_signature_track_label, _user_details_link: @post._user_details_link, _user_email_address: @post._user_email_address, _user_full_name: @post._user_full_name, _user_profile_link: @post._user_profile_link, _user_search_link: @post._user_search_link, _user_title: @post._user_title, _viewer_can_edit: @post._viewer_can_edit, _viewer_can_vote: @post._viewer_can_vote, anonymous: @post.anonymous, approved: @post.approved, deleted: @post.deleted, edit_time: @post.edit_time, fthread_id: @post.fthread_id, is_spam: @post.is_spam, link: @post.link, order: @post.order, original: @post.original, post_text: @post.post_text, post_time: @post.post_time, stickied: @post.stickied, text_type: @post.text_type, user_agent: @post.user_agent, user_id: @post.user_id, votes: @post.votes }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    patch :update, id: @post, post: { _reporter_link: @post._reporter_link, _show_signature_track_label: @post._show_signature_track_label, _user_details_link: @post._user_details_link, _user_email_address: @post._user_email_address, _user_full_name: @post._user_full_name, _user_profile_link: @post._user_profile_link, _user_search_link: @post._user_search_link, _user_title: @post._user_title, _viewer_can_edit: @post._viewer_can_edit, _viewer_can_vote: @post._viewer_can_vote, anonymous: @post.anonymous, approved: @post.approved, deleted: @post.deleted, edit_time: @post.edit_time, fthread_id: @post.fthread_id, is_spam: @post.is_spam, link: @post.link, order: @post.order, original: @post.original, post_text: @post.post_text, post_time: @post.post_time, stickied: @post.stickied, text_type: @post.text_type, user_agent: @post.user_agent, user_id: @post.user_id, votes: @post.votes }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end
end
