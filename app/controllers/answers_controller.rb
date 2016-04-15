class AnswersController < ApplicationController
  def create
    # TODO Add information in Flash about success/dismiss in create answer
    question = Question.find_by(id: params[:answer][:question_id])
    question.answers.create(answer_params)
    redirect_to question
  end

  private

  def answer_params
    params.require(:answer).permit(:email, :body)
  end
end