class Course < ApplicationRecord
  has_many :sessions, inverse_of: :course
  accepts_nested_attributes_for :sessions
  has_one_attached :avatar
end
