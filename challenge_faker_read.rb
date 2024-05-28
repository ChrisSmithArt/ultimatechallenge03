# In the challenge_faker_read.rb file:
# Find all the categories in the database (including those that you added using Faker). 
# Display all category names and their associated products (name and price) in a nicely formatted list.


require_relative 'ar.rb'

# Retrieve ALL the categories
display_categories = Category.all

# Loop throug all the categories, print out the category name, and then loop through each product for an individual category
# And then print out each product's name and price before moving onto the next category.
display_categories.each {|c| 
    puts "~~~ #{c.name} Products ~~~"
    display_product = c.products.all
    display_product.each {|p|
        puts "      #{p.name} is $#{p.price}."
    }
}
