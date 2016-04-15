class QuestionsController < ApplicationController

  def create
    question = Question.new(question_params)
    if (question.save)
      redirect_to question, flash: {informations: [{statement: 'Pytanie zostało utworzone!', type: 'success'}]}
    else
      redirect_to root_path, flash: {informations: [{statement: 'Błędne informacje', type: 'danger'}]}
    end
  end

  def show
    @question = Question.find_by(id: params[:id])

    @answers = @question.answers.order(created_at: :desc)
  end

  private

  def question_params
    params.require(:question).permit(:email, :body)
  end

end