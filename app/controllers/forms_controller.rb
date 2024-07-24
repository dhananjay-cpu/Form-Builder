class FormsController < ApplicationController
  before_action :set_form, only: %i[ show update destroy ]

  # GET /forms
  def index
    @forms = Form.all

    render json: @forms
  end

  # GET /forms/1
  def show
    render json: @form.as_json(include: [headers: { except: [:created_at, :updated_at] },  inputtexts: { except: [:created_at, :updated_at] },  phones: { except: [:created_at, :updated_at] },  emails: { except: [:created_at, :updated_at] },  emails: { except: [:created_at, :updated_at] },  buttons: { except: [:created_at, :updated_at] },  addresses: { except: [:created_at, :updated_at] }])
  end

  # POST /forms
  def create
    @form = Form.new(form_params)

    if @form.save
      render json: @form.as_json(include: [:headers,  :inputtexts,  :phones,  :emails,  :emails,  :buttons,  :addresses]), status: :created
    else
      render json: @form.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /forms/1
  def update
    # @user = User.find[params[:id]]
    # if @user.logged_in?
      if @form.update(form_params)
        render json: @form.as_json(include: [:headers,  :inputtexts,  :phones,  :emails,  :emails,  :buttons,  :addresses])
      else
        render json: @form.errors, status: :unprocessable_entity
      end
    # else
    #   render json: { message: "Please Sign In"}
    # end
  end

  # DELETE /forms/1
  def destroy
    @form.destroy!
    render json: { message: "Form has been deleted successfully"}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form
      # @form = Form.find(params[:id])
      @form = Form.find_by(key: params[:key])
    end

    # Only allow a list of trusted parameters through.
    def form_params
      params.require(:form).permit(headers_attributes:[:text, :text_transform, :font_size, :font_weight, :font_style, :color, :position],
        inputtexts_attributes: [:text, :placeholder, :text_transform, :defalt_value, :font_size, :font_weight, :font_style, :color, :position, :required, :disable], 
        phones_attributes: [:text, :placeholder, :text_transform, :defalt_value, :font_size, :font_weight, :font_style, :color, :position, :required, :disable], 
        emails_attributes: [:text, :placeholder, :text_transform, :defalt_value, :font_size, :font_weight, :font_style, :color, :position, :required, :disable],
        buttons_attributes: [:text, :text_transform, :font_size, :font_weight, :font_style, :color, :background_color, :position, :button_type],
        addresses_attributes: [:text, :placeholder, :text_transform, :defalt_value, :font_size, :font_weight, :font_style, :color, :position, :required, :disable, :resize])
    end
end
