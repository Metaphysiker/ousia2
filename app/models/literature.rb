class Literature < ApplicationRecord
  belongs_to :session
  has_one_attached :attachment
end
