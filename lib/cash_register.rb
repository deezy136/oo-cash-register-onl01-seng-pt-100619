require 'pry'

class CashRegister
attr_accessor :total, :discount

 
  def initialize(discount=0)
   	@total = 0
   	@discount =discount
   	@cart =[]
  end

	def total
		@total

	end

	def add_item(title, price, quantity)

	   self.total = self.total + price * quantity
	   quantity.times{ @cart << title} 

		# if quantity == 0
		#    self.total = self.total + price 
		# else 
		# 	self.total = self.total + price * quantity
		# end
		#  quantity > 0 ? quantity.times{ @cart << title} : 1.times{ @cart << title} 
	end

	def void_last_transaction
		self.total = 0
	end

	def apply_discount
		if @discount > 0
			new_dis = @discount *10
	      self.total = self.total - new_dis
		  return "After the discount, the total comes to $#{self.total}."
	    else
          new_dis = @discount *10
	      self.total = self.total - new_dis
		  return "There is no discount to apply."
		 end
	end

	def items
	   @cart
	   
	end

end