require "test_helper"

class InputtextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inputtext = inputtexts(:one)
  end

  test "should get index" do
    get inputtexts_url, as: :json
    assert_response :success
  end

  test "should create inputtext" do
    assert_difference("Inputtext.count") do
      post inputtexts_url, params: { inputtext: { color: @inputtext.color, defalt_value: @inputtext.defalt_value, disable: @inputtext.disable, font_size: @inputtext.font_size, font_style: @inputtext.font_style, font_weight: @inputtext.font_weight, form_id: @inputtext.form_id, placementholder: @inputtext.placementholder, position: @inputtext.position, required: @inputtext.required, text: @inputtext.text, text_transformation: @inputtext.text_transformation } }, as: :json
    end

    assert_response :created
  end

  test "should show inputtext" do
    get inputtext_url(@inputtext), as: :json
    assert_response :success
  end

  test "should update inputtext" do
    patch inputtext_url(@inputtext), params: { inputtext: { color: @inputtext.color, defalt_value: @inputtext.defalt_value, disable: @inputtext.disable, font_size: @inputtext.font_size, font_style: @inputtext.font_style, font_weight: @inputtext.font_weight, form_id: @inputtext.form_id, placementholder: @inputtext.placementholder, position: @inputtext.position, required: @inputtext.required, text: @inputtext.text, text_transformation: @inputtext.text_transformation } }, as: :json
    assert_response :success
  end

  test "should destroy inputtext" do
    assert_difference("Inputtext.count", -1) do
      delete inputtext_url(@inputtext), as: :json
    end

    assert_response :no_content
  end
end
