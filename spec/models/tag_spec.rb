require 'rails_helper'

RSpec.describe Tag, type: :model do
  it "is not valid without a title" do
    reminder = Reminder.new(titulo: nil)
    expect(reminder).to_not be_valid
  end
end
