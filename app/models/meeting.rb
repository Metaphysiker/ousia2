class Meeting < ApplicationRecord
  belongs_to :course
  has_many :literatures
  has_one_attached :video
end
