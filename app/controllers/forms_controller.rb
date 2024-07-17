class FormsController < ApplicationController
  before_action :set_form, only: %i[ show update destroy ]

  # GET /forms
  def index
    @forms = Form.all

    render json: @forms
  end

  # GET /forms/1
  def show
    render json: @form.as_json(include: [:headers,  :inputtexts,  :phones,  :emails,  :emails,  :buttons,  :addresses])
  end

  # POST /forms
  def create
    @form = Form.new(form_params)

    if @form.save
      render json: @form.as_json(include: [:headers,  :inputtexts,  :phones,  :emails,  :emails,  :buttons,  :addresses]), status: :created, location: @form
    else
      render json: @form.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /forms/1
  def update
    if @form.update(form_params)
      render json: @form.as_json(include: [:headers,  :inputtexts,  :phones,  :emails,  :emails,  :buttons,  :addresses])
    else
      render json: @form.errors, status: :unprocessable_entity
    end
  end

  # DELETE /forms/1
  def destroy
    @form.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form
      @form = Form.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def form_params
      params.require(:form).permit(:title, headers_atttributes: [:text, :text_transform, :font_size, :font_weight, :font_style, :color, :position],
      inputtexts_attributes: [:text, :placeholder, :text_transform, :defalt_value :font_size, :font_weight, :font_style, :color, :position, :required, :disable], 
      phones_attributes: [:text, :placeholder, :text_transform, :defalt_value :font_size, :font_weight, :font_style, :color, :position, :required, :disable], 
      emails_attributes: [:text, :placeholder, :text_transform, :defalt_value :font_size, :font_weight, :font_style, :color, :position, :required, :disable],
      buttons_attributes: [:text, :text_transform, :font_size, :font_weight, :font_style, :color, :background_color, :position, :button_type],
      addresses_attributes: [:text, :placeholder, :text_transform, :defalt_value, :font_size, :font_weight, :font_style, :color, :position, :required, :disable, :resize])
    end
end
