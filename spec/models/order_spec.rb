require 'spec_helper'

describe Order do
  it { expect(subject).to validate_presence_of(:restaurant_id) }
  it { expect(subject).to validate_presence_of(:datetime) }
  it { expect(subject).to validate_presence_of(:quantity) }

  context "Expect order to validate presence of phone or email" do
    subject { build :order, phone: nil, email: nil }

    it "not valid without both phone and email" do
      expect(subject).to be_invalid
    end

    it "valid with phone, without email" do
      subject.phone = '0999999999'
      expect(subject).to be_valid
    end

    it "valid with email, without phone" do
      subject.email = 'test@example.com'
      expect(subject).to be_valid
    end

    it "valid with phone and email" do
      subject.phone = '0999999999'
      subject.email = 'test@example.com'
      expect(subject).to be_valid
    end
  end
end
