class Question < ApplicationRecord
  @@MULTIPLE_SELECTION_TYPE=1
  @@TEXT_ANSWER_TYPE=2

  def is_multiple_selection?
    if self.question_type==@@MULTIPLE_SELECTION_TYPE
      return true
    end
    return false
  end


  has_one_attached :question_image
  has_many :question_options
  accepts_nested_attributes_for :question_options

end
