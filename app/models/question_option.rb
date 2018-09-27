class QuestionOption < ApplicationRecord
  belongs_to :question

  def get_option_name
    all_options=self.question.question_options
  end
end
