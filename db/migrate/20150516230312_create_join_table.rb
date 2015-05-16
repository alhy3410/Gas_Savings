class CreateJoinTable < ActiveRecord::Migration
  def change
    create_table(:gas_stations, id: false) do |t|
      t.integer :gas_id
      t.integer :station_id
    end

    add_index :gas_stations, :gas_id
    add_index :gas_stations, :station_id
  end
end
