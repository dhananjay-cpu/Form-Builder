class InputtextsController < ApplicationController
  before_action :set_inputtext, only: %i[ show update destroy ]

  # GET /inputtexts
  def index
    @inputtexts = Inputtext.all

    render json: @inputtexts
  end

  # GET /inputtexts/1
  def show
    render json: @inputtext
  end

  # POST /inputtexts
  def create
    @inputtext = Inputtext.new(inputtext_params)

    if @inputtext.save
      render json: @inputtext, status: :created, location: @inputtext
    else
      render json: @inputtext.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inputtexts/1
  def update
    if @inputtext.update(inputtext_params)
      render json: @inputtext
    else
      render json: @inputtext.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inputtexts/1
  def destroy
    @inputtext.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inputtext
      @inputtext = Inputtext.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inputtext_params
      params.require(:inputtext).permit(:text, :placementholder, :text_transformation, :defalt_value, :font_size, :font_weight, :font_style, :color, :position, :required, :disable, :form_id)
    end
end
