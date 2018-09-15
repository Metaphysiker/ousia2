class Course < ApplicationRecord
  has_many :meetings, inverse_of: :course
  accepts_nested_attributes_for :meetings
  has_one_attached :avatar
end
