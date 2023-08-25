class Course < ApplicationRecord
  belongs_to :college

  validates :course_name, presence: true, uniqueness: {scope: :college_id, case_sensitive: false, message: "%{value} Course already exists in College"}
end
