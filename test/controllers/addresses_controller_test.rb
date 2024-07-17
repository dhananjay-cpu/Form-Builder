require "test_helper"

class AddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @address = addresses(:one)
  end

  test "should get index" do
    get addresses_url, as: :json
    assert_response :success
  end

  test "should create address" do
    assert_difference("Address.count") do
      post addresses_url, params: { address: { color: @address.color, default_value: @address.default_value, disable: @address.disable, fonr_weight: @address.fonr_weight, font_size: @address.font_size, font_style: @address.font_style, form_id: @address.form_id, placeholder: @address.placeholder, position: @address.position, required: @address.required, resize: @address.resize, text: @address.text, text_transform: @address.text_transform } }, as: :json
    end

    assert_response :created
  end

  test "should show address" do
    get address_url(@address), as: :json
    assert_response :success
  end

  test "should update address" do
    patch address_url(@address), params: { address: { color: @address.color, default_value: @address.default_value, disable: @address.disable, fonr_weight: @address.fonr_weight, font_size: @address.font_size, font_style: @address.font_style, form_id: @address.form_id, placeholder: @address.placeholder, position: @address.position, required: @address.required, resize: @address.resize, text: @address.text, text_transform: @address.text_transform } }, as: :json
    assert_response :success
  end

  test "should destroy address" do
    assert_difference("Address.count", -1) do
      delete address_url(@address), as: :json
    end

    assert_response :no_content
  end
end
