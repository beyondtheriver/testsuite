FactoryGirl.define do
  factory :post do
    title "MyString"
    message "MyText"
  end
   #first factory is named after the class
   factory :candy_store do
      name "Skittlopolis"
      specialty "Skittles"
      phone_number "1-800-SKITTLE"
      address "4102 Lower Rd., Newportville, PA 19056"
      employees 5
   end
   #this factory is named something other than the class, so it must
   #be given a class definition
   factory :broken_candy_store, class: 'CandyStore' do
      name ""
      specialty "Skittles"
      phone_number "1-800-SKITTLE"
      address "4102 Lower Rd., Newportville, PA 19056"
      employees 5
   end
end
