class Literature < ApplicationRecord
  belongs_to :meeting
  has_one_attached :attachment
end
