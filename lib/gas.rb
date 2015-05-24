class Gas < ActiveRecord::Base
  belongs_to(:stations)

  private

  define_singleton_method(:average_of_all) do
    all_purchases = Gas.all
    total = 0
    all_purchases.each do |purchase|
      total += purchase.price
    end
    num = Gas.all.length
    average = total/num
    average.round(2)
  end


  define_method(:findmpg) do |amount_of_gas_purchased|
    miles = self.to_f
    gas_amount = amount_of_gas_purchased.to_f
    mpg = miles / gas_amount
    mpg
  end

end
