class Stations < ActiveRecord::Base
  has_many(:gas)
end
