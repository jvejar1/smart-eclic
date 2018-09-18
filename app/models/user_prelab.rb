class UserPrelab < ApplicationRecord
  belongs_to :user
  belongs_to :prelab
  has_many :question_option_selections
  has_many :question_text_answers
end
