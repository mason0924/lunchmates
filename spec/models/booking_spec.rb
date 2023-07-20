require 'rails_helper'

RSpec.describe Booking, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "has an user and an event" do
    booking = create(:booking, user: 1)
    expect(booking).to be_david
  end
end
