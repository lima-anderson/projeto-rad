require 'rails_helper'

RSpec.describe Reminder, type: :model do
  it "is not valid without a title" do
    reminder = Reminder.new(titulo: nil)
    expect(reminder).to_not be_valid
  end
  it "is not valid without a tag" do
    reminder = Reminder.new(tag_id: nil)
    expect(reminder).to_not be_valid
  end
end
