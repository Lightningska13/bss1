require 'test_helper'

class SamplesControllerTest < ActionController::TestCase
  setup do
    @sample = samples(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:samples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sample" do
    assert_difference('Sample.count') do
      post :create, :sample => { :description => @sample.description, :pic_content_type => @sample.pic_content_type, :pic_file_name => @sample.pic_file_name, :pic_file_size => @sample.pic_file_size, :sample_cat_id => @sample.sample_cat_id, :title => @sample.title, :url => @sample.url }
    end

    assert_redirected_to sample_path(assigns(:sample))
  end

  test "should show sample" do
    get :show, :id => @sample
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sample
    assert_response :success
  end

  test "should update sample" do
    put :update, :id => @sample, :sample => { :description => @sample.description, :pic_content_type => @sample.pic_content_type, :pic_file_name => @sample.pic_file_name, :pic_file_size => @sample.pic_file_size, :sample_cat_id => @sample.sample_cat_id, :title => @sample.title, :url => @sample.url }
    assert_redirected_to sample_path(assigns(:sample))
  end

  test "should destroy sample" do
    assert_difference('Sample.count', -1) do
      delete :destroy, :id => @sample
    end

    assert_redirected_to samples_path
  end
end
