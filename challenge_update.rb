# In the challenge_update.rb file:
# Find all products with a stock quantity greater than 40.
# Add one to the stock quantity of each of these products and then save these changes to the database.

require_relative 'ar.rb'

# Retrieve all the products where the stock quantity is greater than 40
high_stock_products = Product.where("stock_quantity > 40")

# Loop through the retrieved products and print out the quantity of each product
high_stock_products.each { |product| puts "#{product.name} has #{product.stock_quantity} in stock."}

# Loop through the retrieved products again, but add 1 to their stock quantity.
high_stock_products.each do  |product| 
    product.stock_quantity += 1 
    product.save
end

# Loop through the retrieved products a final time to show their new stock.
high_stock_products.each { |product| puts "#{product.name} has #{product.stock_quantity} in stock."}

