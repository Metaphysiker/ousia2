class Session < ApplicationRecord
  belongs_to :course
  has_many :literatures, inverse_of: :session
  has_one_attached :video
end
