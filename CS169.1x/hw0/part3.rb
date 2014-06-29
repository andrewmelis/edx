require 'rspec/autorun'

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    @isbn = validate_isbn(isbn)
    @price = validate_price(price)
  end

  def validate_isbn(isbn)
    unless isbn == ""
       isbn 
    else
      raise ArgumentError
    end
  end

  def validate_price(price)
    unless price <= 0
      price
    else
      raise ArgumentError
    end

  end

end




RSpec.describe BookInStock do
  describe "#initialize" do
    it "sets the isbn and price of a book" do
      book = BookInStock.new("A473", 20.00)
      expect(book.isbn).to eq("A473")
      expect(book.price).to eq(20.0)
    end

    it "raises an ArgumentError if the isbn is the empty string" do
      expect { BookInStock.new("", 20.0) }.to raise_error(ArgumentError)
    end

    it "raises an ArgumentError if the price is less than or equal to 0" do
      expect { BookInStock.new("abcd", 0.0) }.to raise_error(ArgumentError)
    end

  end



end
