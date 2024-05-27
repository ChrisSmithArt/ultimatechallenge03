# In the challenge_create.rb file:
# Create three new products using the three different ways to create new AR objects.
# Ensure that all three new products are persisted to the database, without validations errors.
# Create a Product object that is missing some required columns.
# Attempt to save this product and print all the AR errors which are generated.

require_relative 'ar.rb'

scrab_cakes = Product.new
scrab_cakes.name = "Scrab Cakes"
scrab_cakes.description = "Processed from native Scrab meat, both delicious and nutritious."
scrab_cakes.price = "12.50"
scrab_cakes.stock_quantity = "5"

scrab_cakes.save
puts scrab_cakes.inspect

paramite_pies = Product.create(
    name: "Scrab Cakes",
    description: "Processed from native Paramite meat, homestyle and 100% natural.",
    price: "17.75",
    stock_quantity: "4"
    )

paramite_pies.save
puts paramite_pies.inspect

meech_munchies = Product.new(name: "Meech Munchies")

if (meech_munchies.save)
    puts "Meech Munchies were saved to the database products table."
    puts meech_munchies.inspect
  else
    puts "There was an error saving Meech Munchies to the database."
    
    # We can loop through all the validation errors.
    meech_munchies.errors.messages.each do |column, errors|
      errors.each do |error|
        puts "The #{column} property #{error}."
      end
    end
  end
