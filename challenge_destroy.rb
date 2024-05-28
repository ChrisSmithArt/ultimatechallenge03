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


