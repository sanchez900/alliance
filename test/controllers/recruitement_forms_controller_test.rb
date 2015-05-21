require 'test_helper'

class RecruitementFormsControllerTest < ActionController::TestCase
  setup do
    @recruitement_form = recruitement_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recruitement_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recruitement_form" do
    assert_difference('RecruitementForm.count') do
      post :create, recruitement_form: { age: @recruitement_form.age, country: @recruitement_form.country, email: @recruitement_form.email, fb_id: @recruitement_form.fb_id, fname: @recruitement_form.fname, ingame_name: @recruitement_form.ingame_name, join_us: @recruitement_form.join_us, mastery_rank: @recruitement_form.mastery_rank, steam_id: @recruitement_form.steam_id }
    end

    assert_redirected_to recruitement_form_path(assigns(:recruitement_form))
  end

  test "should show recruitement_form" do
    get :show, id: @recruitement_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recruitement_form
    assert_response :success
  end

  test "should update recruitement_form" do
    patch :update, id: @recruitement_form, recruitement_form: { age: @recruitement_form.age, country: @recruitement_form.country, email: @recruitement_form.email, fb_id: @recruitement_form.fb_id, fname: @recruitement_form.fname, ingame_name: @recruitement_form.ingame_name, join_us: @recruitement_form.join_us, mastery_rank: @recruitement_form.mastery_rank, steam_id: @recruitement_form.steam_id }
    assert_redirected_to recruitement_form_path(assigns(:recruitement_form))
  end

  test "should destroy recruitement_form" do
    assert_difference('RecruitementForm.count', -1) do
      delete :destroy, id: @recruitement_form
    end

    assert_redirected_to recruitement_forms_path
  end
end
