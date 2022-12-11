class Reminder < ApplicationRecord
  belongs_to :tag
  validates :titulo, presence: true
  validates :tag_id, presence: true
end
