require('spec_helper')

describe(Station) do
  it('has many purchases') do
    test_station =({:name => "Station 1", :address => "Address for Station 1"})
    purchase1 = test_station.gas.create({:name => "bought on monday"})
    purchase2 = test_station.gas.create({:name => "bought on monday"})
    expect(test_station.gas()).to(eq([purchase1, purchase2]))
  end
end
