require 'rails_helper'

RSpec.describe Customer, type: :model do
  subject { Customer.new(first_name: "Adriana", last_name: "Cabrera", phone_number: "8889995678", email: "adi_111@icloud.com" )}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a first_name" do
    subject.first_name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a last_name" do
    subject.last_name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a phone number" do
    subject.phone_number=nil
    expect(subject).to_not be_valid
  end

  it "is not valid without an email" do
    subject.email=nil
    expect(subject).to_not be_valid
  end
  it "is not valid if the phone number is not 10 chars" do
    phone = subject.phone_number.length
    if phone <10
      expect(subject). to_not be_valid
    end
  end
  it "is not valid if the phone number is not all digits" do
    phone = subject.phone_number
    if (phone.is_a? Integer) == 'false'
      expect(subject). to_not be_valid
    end
  end
  it "is not valid if the email address doesn't have a @" do
    email = subject.email
    if (email.include?("@")) == 'false'
    expect(subject.email).include ("@")
    end 
  end
end
