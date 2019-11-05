
class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction_amount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

def add_item(title, price, quantity = 1)
 
 self.total += price * quantity
i = 0 
while i < quantity
@items << title 
i+=1 
end 

self.last_transaction_amount = price * quantity
end 

def apply_discount
    if @discount  > 0 
         @discount = @discount/100.to_f
        @total = @total - (@total * (@discount))
   return "After the discount, the total comes to $#{@total.to_i}."
  else 
   return "There is no discount to apply."
end 

end 

def items 
@items
end 

 def void_last_transaction

      @total = @total - @last_transaction_amount 
      
      if @items.nil?
      self.total = 0 
    else 
      @total
      end 
    end
 
end
