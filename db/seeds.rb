puts "🌱 Seeding spices..."

# Seed your database here
  Company.create(company_name: 'CodeWorld')
  response = RestClient.get 'http://localhost:3002/users'
  users = JSON.parse(response)
  users.each do |user|
      new_user = User.create(
        name: user['name'],
        username: user['username'],
        email: user['email'],
        phone: user['phone'],
      )
  end

puts "✅ Done seeding!"
