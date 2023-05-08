require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here

    it 'will save a product with all four fields set' do
      @category = Category.create(name: "First Category")
      @product = Product.new(name: "First Product", price: 250, quantity: 12, category: @category)

      expect(@product.save).to be(true)

      @product.errors.full_messages.each do |error_message|
        puts error_message
      end
      
    end
    
    it "should have a name" do 
      # validates :name, presence: true
      @category = Category.create(name: "First Category")
      @product = Product.new(name: "", price: 250, quantity: 12, category: @category)
      
      expect(@product.valid?).to be(false)
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end

    it "should have a price" do 
      # validates :price, presence: true
      @category = Category.create(name: "First Category")
      @product = Product.new(name: "Second Product", price: "hundred", quantity: 15, category: @category)
  
      expect(@product.valid?).to be(false)
      expect(@product.errors.full_messages).to include("Price is not a number")
    end

    it "should have a quantity" do 
      # validates :quantity, presence: true
      @category = Category.create(name: "First Category")
      @product = Product.new(name: "Third Product", price: 550, quantity: nil, category: @category)
  
      expect(@product.valid?).to be(false)
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it "should have a category" do 
      # validates :category, presence: true
      @category = Category.create(name: "First Category")
      @product = Product.new(name: "Fourth Product", price: 50, quantity: 2, category: nil)
  
      expect(@product.valid?).to be(false)
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end

  end

end