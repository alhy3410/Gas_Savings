ENV['RACK_ENV'] = 'test'

require('spec_helper')
require('capybara/rspec')
require('./app')

require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.after(:each) do
    Station.all().each() do |station|
      station.destroy()
    end
    Gas.all().each() do |gas|
      gas.destroy()
    end
  end
end
