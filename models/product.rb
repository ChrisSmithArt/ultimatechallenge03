class Product < ActiveRecord::Base
  # This AR object is linked with the products table.
  
  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.

  # Modify the Product model class:
  # Add a validation to this class such that a product must have all columns (other than foreign keys, the id, or datetime column) filled out before it can be saved to the db.
  # Research AR validations and add a validation that will ensure that all product names are unique and longer than 3 characters.

  # name
  # description
  # price
  # stock_quantity
  # category_id
  # created_at
  # updated_at
  #Products are associated with the Category table, through referencing the category_id (foreign key)


  belongs_to :category

  #Validation for uniquness of names, and minimum length, additionally requiring name, description, price, and stock_quantity.
  validates :name, uniqueness: true
  validates :name, length: { minimum: 3, too_short: "%{count} is the mininum number of characters required for a Product's name." }
  validates :name, :description, :price, :stock_quantity, presence: true
end