require 'rails_helper'

RSpec.describe User, type: :model do
   let (:user){build(:user)}
   let(:broken_user){build(:broken_user)}
   let(:no_names){build(:no_names)}

  #  let(:candystore){CandyStore.new(name:"Skittlopolis", specialty:"Skittles", phone_number:"1-800-SKITTLE", address:"4102 Lower Rd., Newportville, PA 19056", employees: 5)}
   it "fname is present" do

      expect(user.valid?).to eq(true)
   end

   it "fname is present" do

      expect(no_names.valid?).to eq(false)
   end

   it "lname is present" do

      expect(user.valid?).to eq(true)
   end

   it "lname is present" do

      expect(no_names.valid?).to eq(false)
   end

   it "username is present" do

      expect(user.valid?).to eq(true)
   end

   it "username is present" do

      expect(no_names.valid?).to eq(false)
   end

   it "username is unique" do

      expect(user.valid?).to eq(true)
   end

   it "username is at least 4 characters." do

      expect(user.valid?).to eq(true)
   end

   it "username is at least 4 characters" do

      expect(broken_user.valid?).to eq(false)
   end


   # it "name is present" do
   #    #  candystore = create(:candy_store)
   #    # candystore.name = nil

   #    expect(candystore.valid?).to eq(true)
   # end
end
