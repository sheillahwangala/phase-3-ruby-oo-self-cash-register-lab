class CashRegister
    attr_accessor :total, :items, :discount, :last_transaction

    def initialize (discount=0)
        @total=0
        @discount = discount
        @items = []
        
    end

    def add_item(title, price, quantity=1)
        self.last_transaction = price * quantity
        self.total += price * quantity
        quantity.times do
        self.items << title
        end

      end

      def apply_discount
        if discount > 0
            present_discount =  self.total * @discount/100
            self.total = self.total-present_discount
            "After the discount, the total comes to $#{self.total}."

        else
            "There is no discount to apply."

        end
    end

    def void_last_transaction
        self.total -= last_transaction
    end
          
end