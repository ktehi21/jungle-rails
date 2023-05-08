require 'rails_helper'

RSpec.describe User, type: :model do

  # it 'will save a product with all four fields set' do
  #   @category = Category.create(name: "First Category")
  #   @product = Product.new(name: "First Product", price: 250, quantity: 12, category: @category)

  #   expect(@product.save).to be(true)

  #   @product.errors.full_messages.each do |error_message|
  #     puts error_message
  #   end
    
  # end
  
  describe 'Validations' do
    
    it "password and password_confirmation should be same" do
      user = User.new(name: "ABC", email: "abc@a.com", 
        password: "asdf", password_confirmation: "adfg")

      expect(user.valid?).to be(false)  
    end
    
    it "email is not case sensitive" do
      user = User.new(name: "ABC", email: "abc@a.com", 
        password: "asdf", password_confirmation: "asdf")
      user2 = User.new(name: "BCE", email: "ABC@A.com", 
        password: "asdf", password_confirmation: "asdf")
      
      user.save

      expect(user2.valid?).to be(false)  
    end
    
    it "Email, first name, and last name should be require" do
      user = User.new(name: "ab d", email: "", 
        password: "asdf", password_confirmation: "asdf")
      
      expect(user.valid?).to be(false)  
    end

  end
end
