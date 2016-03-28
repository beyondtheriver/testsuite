require 'rails_helper'

RSpec.describe User, type: :model do
   let(:post){build(:post)}
   let(:broken_post){build(:broken_post)}
   let(:nothing_here){build(:nothing_here)}

   it "title is present" do

      expect(post.valid?).to eq(true)
   end

   it "title is present" do

      expect(nothing_here.valid?).to eq(false)
   end

   it "title is a string" do

      expect(post.valid?).to eq(true)
   end

   it "title is a string" do

      expect(broken_post.valid?).to eq(false)
   end
end
