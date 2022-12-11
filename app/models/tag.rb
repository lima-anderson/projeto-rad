class Tag < ApplicationRecord
    has_many :reminders
    accepts_nested_attributes_for :reminders, allow_destroy: true
    validates :titulo, presence: true
end
