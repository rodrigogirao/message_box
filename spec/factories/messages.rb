FactoryBot.define do
  factory :message do
    subject     'Subject'
    body        'Lorem ipsum dolor amet.'
    read_at     nil
    archived_at nil

    association :receiver, factory: :user
    association :sender,   factory: :user

    trait :archived do
      archived_at { Time.zone.now }
    end

    trait :read do
      read_at { Time.zone.now }
    end
  end
end
