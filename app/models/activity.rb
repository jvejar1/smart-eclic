class Activity < ApplicationRecord
  has_one :lab
  has_one :prelab
  belongs_to :course
  def self.chapters_by_number
    {1=>"capitulo 1 ",

                             2=>"capitulo 2",
                            3=>"capitulo 3",
                            4=>"capitulo 4"}
  end
end
