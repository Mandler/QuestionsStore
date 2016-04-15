class HomeController < ApplicationController
  def index
    @questions = Question.order(created_at: :desc).page(params[:page]).per(2)
  end

  def about
  end
end
