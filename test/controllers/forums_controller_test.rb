require 'test_helper'

class ForumsControllerTest < ActionController::TestCase
  setup do
    @forum = forums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forum" do
    assert_difference('Forum.count') do
      post :create, forum: { can_post: @forum.can_post, deleted: @forum.deleted, description: @forum.description, display_order: @forum.display_order, forum_moderators_only: @forum.forum_moderators_only, ftype: @forum.ftype, name: @forum.name, open_time: @forum.open_time, parent_id: @forum.parent_id, resolved_tag: @forum.resolved_tag, show_threads: @forum.show_threads }
    end

    assert_redirected_to forum_path(assigns(:forum))
  end

  test "should show forum" do
    get :show, id: @forum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forum
    assert_response :success
  end

  test "should update forum" do
    patch :update, id: @forum, forum: { can_post: @forum.can_post, deleted: @forum.deleted, description: @forum.description, display_order: @forum.display_order, forum_moderators_only: @forum.forum_moderators_only, ftype: @forum.ftype, name: @forum.name, open_time: @forum.open_time, parent_id: @forum.parent_id, resolved_tag: @forum.resolved_tag, show_threads: @forum.show_threads }
    assert_redirected_to forum_path(assigns(:forum))
  end

  test "should destroy forum" do
    assert_difference('Forum.count', -1) do
      delete :destroy, id: @forum
    end

    assert_redirected_to forums_path
  end
end
