
class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction_amount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

def add_item(title, price, quantity = 1)
 
  
if quantity > 1 
    i = 0 
  while i < quantity
  
  @items << title
  i+=1
end 

else 
  @items << title 
  end 
   @total = @total + price * quantity
    @last_transaction_amount = total 
        @total
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
    
 end 
 end 
 
end
