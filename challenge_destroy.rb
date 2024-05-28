# Student name: Chris Smith
# Student ID: 0406238
# Course: WEBD-3011 (255589) Agile Full Stack Web Development
# Instructor: Diogo Iwasaki
# Date: May 28, 2024

# In the challenge_delete.rb file:
# Find one of the products you created in challenge_create.rb and delete it from the database.

require_relative 'ar.rb'

# Paramites went extinct, no more Paramite Pies.
# Select the product from our create file where the name is 'Paramite Pies'
extinct_product = Product.where(:name => 'Paramite Pies').first

# Inspect our retrieved object to make sure we have the right object
puts extinct_product.inspect

# Destroy the object, unless it doesn't exist
extinct_product.destroy unless extinct_product.nil?


