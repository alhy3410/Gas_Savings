class AddColumnForMiles < ActiveRecord::Migration
  def change
    add_column(:gas, :miles, :float)

  end
end
