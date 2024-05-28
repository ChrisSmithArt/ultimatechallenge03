# Student name: Chris Smith
# Student ID: 0406238
# Course: WEBD-3011 (255589) Agile Full Stack Web Development
# Instructor: Diogo Iwasaki
# Date: May 28, 2024

require_relative 'ar.rb'

# In the challenge_faker.rb file:
# In a loop user Faker to generate 10 new categories. 

# Within this same loop use the newly created and saved category objects to generate 10 new products for each category. 
# The name, description, price and quantity of these 10 products should also be generated using faker.

#make a loop to create 10 categories
#nest a loop inside that first loop to create 10 products for each category
10.times { 
    new_category = Category.new(name: Faker::Food.ingredient)
    new_category.save

    puts new_category.inspect
    10.times { 
        new_product = new_category.products.build(
            name: "#{Faker::Ancient.primordial} #{new_category.name}",
            description: Faker::Lorem.sentence ,
            price: Faker::Number.decimal(2),
            stock_quantity: Faker::Base::rand_in_range(1, 20)
        )
        new_product.save
    }
}

