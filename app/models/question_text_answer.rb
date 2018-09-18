class QuestionTextAnswer < ApplicationRecord
  belongs_to :question
  belongs_to :user_prelab
  has_one_attached :file_attached
end
