# In the challenge_delete.rb file:
# Find one of the products you created in challenge_create.rb and delete it from the database.

require_relative 'ar.rb'

extinct_product = Product.where(:name => 'Paramite Pies').first


puts extinct_product.inspect



extinct_product.destroy unless extinct_product.nil?


