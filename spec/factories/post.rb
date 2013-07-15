FactoryGirl.define do
  sequence :title do |n|
    "This is post ##{n}"
  end

  factory :post do
    title
    body { "# Heading\n\nThis is the body in markdown." }
    author "authornick"
    published_at Time.now
    published true
  end
end
