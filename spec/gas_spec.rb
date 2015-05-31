require('spec_helper')

describe('Gas') do
  describe('#findmpg') do
    it('will calculate the mpg for a car')
    gas_amount = 30
    miles = 1500
    answer = miles.findmpg(gas_amount)
    newpurchase = Gas.create({:mpg => answer})
    expect(newpurchase.mpg).to(eq(50.00))
  end
end
