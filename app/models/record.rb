class Record < ActiveRecord::Base
  belongs_to :student
  belongs_to :project

  validates_presence_of :student_id, :project_id
  validates :hours_worked, numericality: { only_integer: true , greater_than_or_equal_to: 0}

end
