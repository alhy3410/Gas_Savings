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
    num > 0
    average = total/num
    average.round(2)
  end
end
