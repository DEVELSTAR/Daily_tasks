# db/seeds.rb

# Sample values for different subjects and periods
math_values = ["Algebra", "Geometry", "Calculus", "Statistics", "Trigonometry"]
science_values = ["Physics", "Chemistry", "Biology", "Astronomy", "Geology"]
english_values = ["Literature", "Grammar", "Writing", "Poetry", "Composition"]
period_values = ["Daily", "Weekly", "Monthly", "Yearly"]

# Find user with ID 1
user1 = User.create!(name: "Ayan", email: "ayan@gmail.com", password: 123123)
user2 = User.create!(name: "Anam", email: "anam@gmail.com", password: 123123)
user3 = User.create!(name: "Neha", email: "neha@gmail.com", password: 123123)

# Create 10 posts associated with user1
10.times do
  Post.create(
    math: math_values.sample,
    science: science_values.sample,
    english: english_values.sample,
    period: period_values.sample,
    user: user1
  )
end

# Find user with ID 2
user2 = User.find(2)

# Create 10 posts associated with user2
10.times do
  Post.create(
    math: math_values.sample,
    science: science_values.sample,
    english: english_values.sample,
    period: period_values.sample,
    user: user2
  )
end

# Find user with ID 3
user3 = User.find(3)

# Create 10 posts associated with user2
10.times do
  Post.create(
    math: math_values.sample,
    science: science_values.sample,
    english: english_values.sample,
    period: period_values.sample,
    user: user3
  )
end
