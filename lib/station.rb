class Station < ActiveRecord::Base
  has_many(:gas)
end
