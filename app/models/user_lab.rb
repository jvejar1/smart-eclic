class UserLab < ApplicationRecord
  belongs_to :user
  belongs_to :lab
  has_one_attached :report

  def get_state
    if !self.report.attached?
      return false
    else
      return true
    end
  end
end
