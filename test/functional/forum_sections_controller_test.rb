require 'test_helper'

class ForumSectionsControllerTest < ActionController::TestCase
  setup do
    @forum_section = forum_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forum_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forum_section" do
    assert_difference('ForumSection.count') do
      post :create, :forum_section => @forum_section.attributes
    end

    assert_redirected_to forum_section_path(assigns(:forum_section))
  end

  test "should show forum_section" do
    get :show, :id => @forum_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @forum_section
    assert_response :success
  end

  test "should update forum_section" do
    put :update, :id => @forum_section, :forum_section => @forum_section.attributes
    assert_redirected_to forum_section_path(assigns(:forum_section))
  end

  test "should destroy forum_section" do
    assert_difference('ForumSection.count', -1) do
      delete :destroy, :id => @forum_section
    end

    assert_redirected_to forum_sections_path
  end
end
