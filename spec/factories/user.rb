FactoryGirl.define do
  
  factory :user do |f|
    f.name "Bill"
    f.email Faker::Internet.email
    f.password "password"
    f.password_confirmation "password"
  end

  factory :invalid_user, class: User do |f|
    f.email nil
  end

  factory :custom_user, class: User do |f|
    f.name "bill"
    f.email "email@email.com"
    f.password "billbill"
    f.password_confirmation "billbill"
  end

  factory :user_with_no_name, class: User do |f|
    f.email "email@email.com"
    f.password "billbill"
    f.password_confirmation "billbill"
  end

   factory :user_with_invalid_email, class: User do |f|
    f.email "email.com"
    f.password "billbill"
    f.password_confirmation "billbill"
  end

  factory :user_with_invalid_password, class: User do |f|
    f.email "email@email.com"
    f.password "bill"
    f.password_confirmation "bill"
  end

end