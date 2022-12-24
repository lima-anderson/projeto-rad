class Tag < ApplicationRecord
    has_many :reminders, :dependent => :destroy
    accepts_nested_attributes_for :reminders, allow_destroy: true
    validates :titulo, presence: true
end
