require "test_helper"

class CollectiomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collectiom = collectioms(:one)
  end

  test "should get index" do
    get collectioms_url
    assert_response :success
  end

  test "should get new" do
    get new_collectiom_url
    assert_response :success
  end

  test "should create collectiom" do
    assert_difference('Collectiom.count') do
      post collectioms_url, params: { collectiom: { title: @collectiom.title } }
    end

    assert_redirected_to collectiom_url(Collectiom.last)
  end

  test "should show collectiom" do
    get collectiom_url(@collectiom)
    assert_response :success
  end

  test "should get edit" do
    get edit_collectiom_url(@collectiom)
    assert_response :success
  end

  test "should update collectiom" do
    patch collectiom_url(@collectiom), params: { collectiom: { title: @collectiom.title } }
    assert_redirected_to collectiom_url(@collectiom)
  end

  test "should destroy collectiom" do
    assert_difference('Collectiom.count', -1) do
      delete collectiom_url(@collectiom)
    end

    assert_redirected_to collectioms_url
  end
end
