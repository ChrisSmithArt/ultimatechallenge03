#Products are associated with the Category table, through referencing the category_id (foreign key)

require_relative 'ar.rb'

# #inspect any product
# first_product = Product.first
# puts first_product.inspect

# Use ActiveRecord to find and print out:

# Total number of products
number_of_products = Product.count
puts "There are #{number_of_products} in the products table."

# The names of all products above $10 with names that begin with the letter C.
product_10dollar_C = Product.where('name LIKE "C%" AND price > 10.0')
puts "Products that start with C and cost more than $10:"
product_10dollar_C.each { |product| puts product.name }

# Total number of products with a low stock quantity. (Low is defined as less than 5 in stock.)
number_of_low_stock = Product.where('stock_quantity < 5').count
puts "Total number of product with low stock quanity: #{number_of_low_stock}"


# Add to the challenge_read.rb file:
# Find the name of the category associated with one of the products you have found. (You should do this without referencing the products foreign key value. Use the product's "belongs to" association instead.)
# Find a specific category and use it to build and persist a new product associated with this category. (You should do this without manually setting the products foreign key. Look at the end of this example file to see how to build an ActiveRecord object by way of an "has many" association.)
# Find a specific category and then use it to locate all the the associated products over a certain price.


#find the category name of the last product in the group of objects returned earlier for products that start with 'C' and cost more than $10
product_category = product_10dollar_C.last.category.name

puts product_category

first_cateogory = Category.where(:name => product_category).first

new_one = first_cateogory.products.build( name:  'Oat Milk',
                                        description: 'Milk made from Oats.',
                                        price:  '4.75',
                                        stock_quantity: '100')

new_one.save



puts "In the #{product_category} we have #{first_cateogory.products.size} products."

first_cateogory.products.each { |p| puts p.name }


