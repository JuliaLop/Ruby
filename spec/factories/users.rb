    FactoryGirl.define do
        factory :user do
            sequence(:email) { |n| "user#{n}@factory.com" }
            nick Faker::GameOfThrones.character
            
            trait :with_messages do
                after(:create) do |user|
                    3.times { create(:message, user: user)}
                end
            end
            ## son factories que añadimos a la principal
            factory :user_with_messages, traits:[:with_messages]
            
        end
    end
    