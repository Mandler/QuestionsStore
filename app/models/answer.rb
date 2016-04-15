class Answer < ActiveRecord::Base
  validates :email, format: { with: /[A-Za-z0-9._%+-]+@[A-Za-z0-9-.]+\.[a-zA-Z]+/, message: 'Wrong email address'}, presence: true
  validates :body, presence: true

  belongs_to :question
end
