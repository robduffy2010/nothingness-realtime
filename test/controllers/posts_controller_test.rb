require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_index_url
    assert_response :success
  end

  test "should get new" do
    get posts_new_url
    assert_response :success
  end

  test "should get create" do
    get posts_create_url
    assert_response :success
  end

  test "should get create_comment" do
    get posts_create_comment_url
    assert_response :success
  end

  test "should get thread" do
    get posts_thread_url
    assert_response :success
  end

end
