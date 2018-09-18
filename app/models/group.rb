class Group < ApplicationRecord
  belongs_to :course
  has_many :user_groups
  has_many :users, through: :user_groups
end
