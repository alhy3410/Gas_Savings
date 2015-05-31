require('spec_helper')

describe('Gas') do
  it('will add a new purchase') do
    test_purchase = Gas.create({:name => "Purchased on the way home"})
    expect(test_purchase.name()).to(eq("Purchased on the way home"))
  end

end
