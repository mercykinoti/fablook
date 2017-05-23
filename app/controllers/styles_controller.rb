class StylesController < ApplicationController
  before_action :authenticate_user!

  def index
    @styles = Style.all
  end
  def show
    @style = Style.find(params[:id])
  end
  def new
    @style = Style.new
  end
  def create
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
  end
end
