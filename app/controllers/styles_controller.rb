class StylesController < ApplicationController
  before_action :authenticate_user!
  layout 'formlayout'


  def new
    @quiz = Quiz.find(3)
  end

  def create
    quiz = params[:quiz]

    @answers = []
    quiz.each do |style_id, style|
      answer = Answer.create(user: current_user,
                             style_id: style_id,
                             choices: Choice.find(style[:choice_ids])
      )

      @answers.push answer
    end

    redirect_to products_path
  end
end
