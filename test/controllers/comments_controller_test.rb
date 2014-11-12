require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @comment = comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, comment: { _reporter_link: @comment._reporter_link, _show_signature_track_label: @comment._show_signature_track_label, _user_details_link: @comment._user_details_link, _user_email_address: @comment._user_email_address, _user_full_name: @comment._user_full_name, _user_profile_link: @comment._user_profile_link, _user_search_link: @comment._user_search_link, _user_title: @comment._user_title, _viewer_can_edit: @comment._viewer_can_edit, _viewer_can_vote: @comment._viewer_can_vote, anonymous: @comment.anonymous, comment_text: @comment.comment_text, deleted: @comment.deleted, fthread_id: @comment.fthread_id, is_spam: @comment.is_spam, link: @comment.link, post_id: @comment.post_id, post_time: @comment.post_time, text_type: @comment.text_type, user_agent: @comment.user_agent, user_id: @comment.user_id, votes: @comment.votes }
    end

    assert_redirected_to comment_path(assigns(:comment))
  end

  test "should show comment" do
    get :show, id: @comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment
    assert_response :success
  end

  test "should update comment" do
    patch :update, id: @comment, comment: { _reporter_link: @comment._reporter_link, _show_signature_track_label: @comment._show_signature_track_label, _user_details_link: @comment._user_details_link, _user_email_address: @comment._user_email_address, _user_full_name: @comment._user_full_name, _user_profile_link: @comment._user_profile_link, _user_search_link: @comment._user_search_link, _user_title: @comment._user_title, _viewer_can_edit: @comment._viewer_can_edit, _viewer_can_vote: @comment._viewer_can_vote, anonymous: @comment.anonymous, comment_text: @comment.comment_text, deleted: @comment.deleted, fthread_id: @comment.fthread_id, is_spam: @comment.is_spam, link: @comment.link, post_id: @comment.post_id, post_time: @comment.post_time, text_type: @comment.text_type, user_agent: @comment.user_agent, user_id: @comment.user_id, votes: @comment.votes }
    assert_redirected_to comment_path(assigns(:comment))
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete :destroy, id: @comment
    end

    assert_redirected_to comments_path
  end
end
