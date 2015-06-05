require 'rails_helper'

RSpec.describe User, type: :model do
  context "when it is created" do
    it "must contain at least two characters" do
      user = User.new(name: "Q", email: "qiheme@gmail.com", password_digest: "Lucky!")
      expect(user.save).to be false
    end
  end
end
