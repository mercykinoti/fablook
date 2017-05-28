class StylesController < ApplicationController
  before_action :authenticate_user!
  layout 'formlayout'

  def index
    @styles = Style.all
  end

  def show
    @style = Style.find(params[:id])
  end

  def new
    @style = Style.new
    # @style.build_choice
    @user = User.new
  end

  def create
    @style = Style.build(style_params)
    # first_name = params[:user][:first_name]

    # style = Style.create(question: 'which style do you prefer')
    render json: params
    return
    @style = Style.new(style_params)

    if @style.save
      redirect_to @style
    else
      render "new"
    end
  end

  def update
    @style = Style.find(params[:id])

    @style.update(style_params)

    redirect_to @style
  end

  private

  def style_params
    params.require(:style).permit(:question)
    # , choice_attributes: [:answer]
  end
end
