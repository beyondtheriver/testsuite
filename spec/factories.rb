FactoryGirl.define do
  factory :post do
    title "MyString"
    message "MyText"
  end
  factory :broken_post, class: 'Post' do
    title "When you look into the eyes of a man,
    a great man - a man who knows how to make a strong cup of coffee,
    you shiver. You should shiver. At least I shiver. Because a man who
    knows how to make a great cup of coffee also knows how to tender
    resignation to his wife, to his lover, to his child, to his mother,
    to his sinner, to his saint."
    message "MyText"
  end
  factory :nothing_here, class: 'Post' do
    title ""
    message ""
  end
  #first factory is named after the class
  factory :user do
    fname "Tay"
    lname "Zonday"
    username "PurpleRain"
    email "tzonday@gmail.com"
    password "password"
  end
  #this factory is named something other than the class, so it must
  #be given a class definition
  factory :broken_user, class: 'User' do
    fname "Tord"
    lname "Lardmore"
    username "U2"
    email "tlardmore@sandwichfarts.com"
    password "1234"
  end
  factory :no_names, class: 'User' do
    fname ""
    lname ""
    username ""
    email "secretuser@cia.gov"
    password "password"
  end
end
