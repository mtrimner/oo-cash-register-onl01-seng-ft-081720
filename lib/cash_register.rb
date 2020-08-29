require 'pry'

class CashRegister

    attr_accessor :total, :discount, :last_item

  

    def initialize(discount = 0) 
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(item, price, quantity = 1)
        x = 0
        while x < quantity
            @total += price
            @items << item
            x += 1
        end
        @last_item = price * quantity
    end

    def apply_discount
        discount_float = @discount.to_f / 100
        discount_total = @total * discount_float
        @total -= discount_total

        if @discount > 0
            "After the discount, the total comes to $#{@total.to_i}."
        else 
            "There is no discount to apply."
        end
    end

    def items
        @items
    end
    
    def void_last_transaction
        @total -= @last_item
    end

    
end
