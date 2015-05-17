require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get('/gas_purchases') do
  @gas = Gas.all()
  erb(:list_of_all_gas_purchases)
end

post('/gas_purchases') do
  gas_name = params.fetch('gas_name')
  gas_date = params.fetch('gas_date')
  gas_price = params.fetch('gas_price')
  gas_amount = params.fetch('gas_amount')
  new_gas_purchase = Gas.create({:name => gas_name, :date => gas_date, :price => gas_price, :amount => gas_amount})
  @gas = Gas.all()
  erb(:list_of_all_gas_purchases)
end

get('/delete_purchase/:id') do
  find_purchase = Gas.find(params.fetch('id').to_i())
  find_purchase.delete()
  @gas = Gas.all()
  erb(:list_of_all_gas_purchases)
end

get('/gas_stations') do
  @stations = Station.all()
  erb(:list_of_stations)
end

post('/gas_stations') do
  station_name = params.fetch('gas_station_name')
  station_address = params.fetch('gas_station_address')
  new_station = Station.create({:name => station_name, :address => station_address})
  @stations = Station.all()
  erb(:list_of_stations)
end

get('/delete_stations/:id') do
  find_station = Station.find(params.fetch('id').to_i())
  find_station.delete()
  @stations = Station.all()
  erb(:list_of_stations)
end

get('/gas_stations/:id/add_purchases') do

  erb(:add_purchases_to_station)
end
