require "test_helper"

class EmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @email = emails(:one)
  end

  test "should get index" do
    get emails_url, as: :json
    assert_response :success
  end

  test "should create email" do
    assert_difference("Email.count") do
      post emails_url, params: { email: { color: @email.color, defalt_value: @email.defalt_value, disable: @email.disable, font_size: @email.font_size, font_style: @email.font_style, font_weight: @email.font_weight, form_id: @email.form_id, placementholder: @email.placementholder, position: @email.position, required: @email.required, text: @email.text, text_transformation: @email.text_transformation } }, as: :json
    end

    assert_response :created
  end

  test "should show email" do
    get email_url(@email), as: :json
    assert_response :success
  end

  test "should update email" do
    patch email_url(@email), params: { email: { color: @email.color, defalt_value: @email.defalt_value, disable: @email.disable, font_size: @email.font_size, font_style: @email.font_style, font_weight: @email.font_weight, form_id: @email.form_id, placementholder: @email.placementholder, position: @email.position, required: @email.required, text: @email.text, text_transformation: @email.text_transformation } }, as: :json
    assert_response :success
  end

  test "should destroy email" do
    assert_difference("Email.count", -1) do
      delete email_url(@email), as: :json
    end

    assert_response :no_content
  end
end
