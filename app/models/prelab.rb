class Prelab < ApplicationRecord
  belongs_to :activity
  has_many :circuits
  has_many :util_links
  has_many :prelab_questions
  has_many :questions, through: :prelab_questions
  accepts_nested_attributes_for :questions
  accepts_nested_attributes_for :circuits
  accepts_nested_attributes_for :util_links
  has_many_attached :datasheets

  def get_text_questions
    return self.questions.where(question_type:2)
  end

  def was_performed_by_user(user_id)
    user_prelab = UserPrelab.find_by(user_id:user_id,prelab_id:self.id)
    if user_prelab.nil?
      return false
    else
      return true
    end
  end

end
