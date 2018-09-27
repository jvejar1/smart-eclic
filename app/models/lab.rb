class Lab < ApplicationRecord
  has_one_attached :assignment
  has_many :user_labs
end
