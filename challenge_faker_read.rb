# In the challenge_faker_read.rb file:
# Find all the categories in the database (including those that you added using Faker). 
# Display all category names and their associated products (name and price) in a nicely formatted list.


require_relative 'ar.rb'


display_categories = Category.all

display_categories.each {|c| 
    puts "~~~ #{c.name} Products ~~~"
    display_product = c.products.all
    display_product.each {|p|
        puts "      #{p.name} is $#{p.price}."
    }
}

# puts Category.last.products.first.inspect