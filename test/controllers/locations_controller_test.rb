# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  department :string
#  building   :string
#  floor      :string
#  room       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :integer
#

require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  setup do
    @location = locations(:fit)
  end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:locations)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  test "should create location" do
    assert_difference('Location.count') do
      post :create, location: { building: @location.building, department: @location.department, floor: @location.floor, room: @location.room }
    end

    assert_redirected_to location_path(assigns(:location))
  end

  # test "should show location" do
  #   get :show, id: @location
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @location
  #   assert_response :success
  # end

  test "should update location" do
    patch :update, id: @location, location: { building: @location.building, department: @location.department, floor: @location.floor, room: @location.room }
    assert_redirected_to location_path(assigns(:location))
  end

  test "should destroy location" do
    assert_difference('Location.count', -1) do
      delete :destroy, id: @location
    end

    assert_redirected_to locations_path
  end
end
