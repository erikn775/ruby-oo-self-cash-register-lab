class CashRegister
    attr_accessor :total, :discount, :item, :last_item

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @item = []
        @last_item = []
    end 

    def total
        @total
    end

    def add_item(item, price, quantity = 1)
        @item.fill(item, @item.size, quantity)
        @quantity = quantity
        price = quantity * price
        @total += price 
        @last_item = @last_item.push(price)
     end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else @total = @total * (1 - (@discount / 100.00))
            return "After the discount, the total comes to $#{@total.ceil}."
        end
    end
        
    def items
        @item
    end

    def void_last_transaction
        @total = @total - (@last_item.pop)
    end
end




