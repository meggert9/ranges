require 'test_helper'

class FiveYearsControllerTest < ActionController::TestCase
  setup do
    @five_year = five_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:five_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create five_year" do
    assert_difference('FiveYear.count') do
      post :create, five_year: { close: @five_year.close, date: @five_year.date, high: @five_year.high, low: @five_year.low, open: @five_year.open, pitopen: @five_year.pitopen }
    end

    assert_redirected_to five_year_path(assigns(:five_year))
  end

  test "should show five_year" do
    get :show, id: @five_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @five_year
    assert_response :success
  end

  test "should update five_year" do
    patch :update, id: @five_year, five_year: { close: @five_year.close, date: @five_year.date, high: @five_year.high, low: @five_year.low, open: @five_year.open, pitopen: @five_year.pitopen }
    assert_redirected_to five_year_path(assigns(:five_year))
  end

  test "should destroy five_year" do
    assert_difference('FiveYear.count', -1) do
      delete :destroy, id: @five_year
    end

    assert_redirected_to five_years_path
  end
end
