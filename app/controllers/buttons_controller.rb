class ButtonsController < ApplicationController
  before_action :set_button, only: %i[ show update destroy ]

  # GET /buttons
  def index
    @buttons = Button.all

    render json: @buttons
  end

  # GET /buttons/1
  def show
    render json: @button
  end

  # POST /buttons
  def create
    @button = Button.new(button_params)

    if @button.save
      render json: @button, status: :created, location: @button
    else
      render json: @button.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /buttons/1
  def update
    if @button.update(button_params)
      render json: @button
    else
      render json: @button.errors, status: :unprocessable_entity
    end
  end

  # DELETE /buttons/1
  def destroy
    @button.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_button
      @button = Button.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def button_params
      params.require(:button).permit(:text, :text_transform, :font_size, :font_weight, :font_style, :color, :background_color, :position, :button_type, :form_id)
    end
end
