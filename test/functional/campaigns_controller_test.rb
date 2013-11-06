require 'test_helper'

class CampaignsControllerTest < ActionController::TestCase
  setup do
    @campaign = campaigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campaigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campaign" do
    assert_difference('Campaign.count') do
      post :create, campaign: { end_date: @campaign.end_date, experiences: @campaign.experiences, learnings: @campaign.learnings, location: @campaign.location, name: @campaign.name, revenue: @campaign.revenue, segments: @campaign.segments, start_date: @campaign.start_date, success_events: @campaign.success_events, type: @campaign.type }
    end

    assert_redirected_to campaign_path(assigns(:campaign))
  end

  test "should show campaign" do
    get :show, id: @campaign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campaign
    assert_response :success
  end

  test "should update campaign" do
    put :update, id: @campaign, campaign: { end_date: @campaign.end_date, experiences: @campaign.experiences, learnings: @campaign.learnings, location: @campaign.location, name: @campaign.name, revenue: @campaign.revenue, segments: @campaign.segments, start_date: @campaign.start_date, success_events: @campaign.success_events, type: @campaign.type }
    assert_redirected_to campaign_path(assigns(:campaign))
  end

  test "should destroy campaign" do
    assert_difference('Campaign.count', -1) do
      delete :destroy, id: @campaign
    end

    assert_redirected_to campaigns_path
  end
end
