class CreateIndividualTables < ActiveRecord::Migration
  def change
    create_table(:gas) do |t|
      t.column(:name, :string)
      t.column(:date, :timestamp)
      t.column(:price, :float)
      t.column(:amount, :float)
    end

    create_table(:stations) do |t|
      t.column(:name, :string)
      t.column(:address, :string)
    end  
  end
end
