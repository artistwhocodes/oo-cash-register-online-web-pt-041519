class CashRegister
  attr_accessor :total ,  :discount , :transaction , :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price , quantity = 1) #register total : person total
     self.total += price * quantity #register total
     self.transaction = price * quantity
     quantity.times {self.items << title}
  end

  def apply_discount
     if self.discount > 0
      "After the discount, the total comes to $#{@total = @total - ((@discount / 100.00) * @total).to_i}."
     else
        "There is no discount to apply."
     end
  end

  def void_last_transaction
    self.total = self.transaction - self.total 
  end

end
