require 'test_helper'

class SampleCatsControllerTest < ActionController::TestCase
  setup do
    @sample_cat = sample_cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sample_cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sample_cat" do
    assert_difference('SampleCat.count') do
      post :create, :sample_cat => { :cat_name => @sample_cat.cat_name, :description => @sample_cat.description, :featured => @sample_cat.featured }
    end

    assert_redirected_to sample_cat_path(assigns(:sample_cat))
  end

  test "should show sample_cat" do
    get :show, :id => @sample_cat
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sample_cat
    assert_response :success
  end

  test "should update sample_cat" do
    put :update, :id => @sample_cat, :sample_cat => { :cat_name => @sample_cat.cat_name, :description => @sample_cat.description, :featured => @sample_cat.featured }
    assert_redirected_to sample_cat_path(assigns(:sample_cat))
  end

  test "should destroy sample_cat" do
    assert_difference('SampleCat.count', -1) do
      delete :destroy, :id => @sample_cat
    end

    assert_redirected_to sample_cats_path
  end
end
