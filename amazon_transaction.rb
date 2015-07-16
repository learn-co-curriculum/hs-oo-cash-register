# Code your cash register here!


class AmazonTransaction


  attr_accessor :total, :items, :transaction_code
  @@transaction_codes = []

  def initialize(discount=nil)
    @total = 0
    @items = []
    @discount = discount
    @transaction_code = rand(100000...999999)
    @@transaction_codes << @transaction_code
  end

  def add_item(item, price, quantity=1)
    @total += price * quantity
    quantity.times do 
      @items << item
    end
  end

  def apply_discount
    if @discount 
       discount_amount = @total * (@discount.to_f / 100)
       @total -= discount_amount
       "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def print_receipt
    File.open "receipt.txt", "w" do |file|
      file.write("Your Receipt\nItems:\n#{@items[0]}, #{@items[1]}\nDiscount applied: #{@discount}%\nTotal: $#{@total}")
    end
  end

  def self.transaction_codes
    @@transaction_codes
  end

end
