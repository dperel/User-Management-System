FactoryGirl.define do
  factory :user do
    name 'Frank'
    city 'Frankfurt'
    country 'Germany'
    age '30'
    online_portfolio 'www.github.com'
    email 'frank@gmail.com'
    email_confirmation 'frank@gmail.com'
    accept_terms true
    bio 'I grew up in Europe and have been living here for most of my life.'
  end
end
