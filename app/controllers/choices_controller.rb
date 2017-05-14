class ChoicesController < ApplicationController
  def index
    @choices = Choice.all
  end
  def new
    @choice = Choice.new
  end
  def create
    @style = Choice.find(params[style_id])
    @choice = @style.choices.create(choice_params)
		if @choice.save
			redirect_to @choice
		else
			render "new"
		end
  end

  def update
      @style = Choice.find(params[style_id])
    @choice.update(choice_params)

    redirect_to @style
  end

  private

  def choice_params
    params.require(:choice).permit(:answer)
  end
end
