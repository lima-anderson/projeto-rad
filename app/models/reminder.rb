class Reminder < ApplicationRecord
  belongs_to :tag
  validates :titulo, presence: true
end
