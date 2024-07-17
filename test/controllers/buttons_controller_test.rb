require "test_helper"

class ButtonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @button = buttons(:one)
  end

  test "should get index" do
    get buttons_url, as: :json
    assert_response :success
  end

  test "should create button" do
    assert_difference("Button.count") do
      post buttons_url, params: { button: { background_color: @button.background_color, button_type: @button.button_type, color: @button.color, font_size: @button.font_size, font_style: @button.font_style, font_weight: @button.font_weight, form_id: @button.form_id, position: @button.position, text: @button.text, text_transform: @button.text_transform } }, as: :json
    end

    assert_response :created
  end

  test "should show button" do
    get button_url(@button), as: :json
    assert_response :success
  end

  test "should update button" do
    patch button_url(@button), params: { button: { background_color: @button.background_color, button_type: @button.button_type, color: @button.color, font_size: @button.font_size, font_style: @button.font_style, font_weight: @button.font_weight, form_id: @button.form_id, position: @button.position, text: @button.text, text_transform: @button.text_transform } }, as: :json
    assert_response :success
  end

  test "should destroy button" do
    assert_difference("Button.count", -1) do
      delete button_url(@button), as: :json
    end

    assert_response :no_content
  end
end
