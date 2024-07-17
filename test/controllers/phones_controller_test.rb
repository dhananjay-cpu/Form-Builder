require "test_helper"

class PhonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phone = phones(:one)
  end

  test "should get index" do
    get phones_url, as: :json
    assert_response :success
  end

  test "should create phone" do
    assert_difference("Phone.count") do
      post phones_url, params: { phone: { color: @phone.color, defalt_value: @phone.defalt_value, disable: @phone.disable, font_size: @phone.font_size, font_style: @phone.font_style, font_weight: @phone.font_weight, form_id: @phone.form_id, placementholder: @phone.placementholder, position: @phone.position, required: @phone.required, text: @phone.text, text_transformation: @phone.text_transformation } }, as: :json
    end

    assert_response :created
  end

  test "should show phone" do
    get phone_url(@phone), as: :json
    assert_response :success
  end

  test "should update phone" do
    patch phone_url(@phone), params: { phone: { color: @phone.color, defalt_value: @phone.defalt_value, disable: @phone.disable, font_size: @phone.font_size, font_style: @phone.font_style, font_weight: @phone.font_weight, form_id: @phone.form_id, placementholder: @phone.placementholder, position: @phone.position, required: @phone.required, text: @phone.text, text_transformation: @phone.text_transformation } }, as: :json
    assert_response :success
  end

  test "should destroy phone" do
    assert_difference("Phone.count", -1) do
      delete phone_url(@phone), as: :json
    end

    assert_response :no_content
  end
end
