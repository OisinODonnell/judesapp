require 'test_helper'

class TrainingEventsControllerTest < ActionController::TestCase
  setup do
    @training_event = training_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:training_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create training_event" do
    assert_difference('TrainingEvent.count') do
      post :create, training_event: @training_event.attributes
    end

    assert_redirected_to training_event_path(assigns(:training_event))
  end

  test "should show training_event" do
    get :show, id: @training_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @training_event
    assert_response :success
  end

  test "should update training_event" do
    put :update, id: @training_event, training_event: @training_event.attributes
    assert_redirected_to training_event_path(assigns(:training_event))
  end

  test "should destroy training_event" do
    assert_difference('TrainingEvent.count', -1) do
      delete :destroy, id: @training_event
    end

    assert_redirected_to training_events_path
  end
end
