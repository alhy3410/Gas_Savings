class UpdateTable < ActiveRecord::Migration
  def change
    add_column(:gas, :mpg, :float)
  end
end
