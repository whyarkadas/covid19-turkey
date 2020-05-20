class CreateStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :statistics do |t|
      t.date :date
      t.integer :total_infected
      t.integer :daily_infected
      t.integer :total_died
      t.integer :daily_died
      t.integer :intubated
      t.integer :intensive_care
      t.integer :total_test
      t.integer :daily_test
      t.integer :total_recovered
      t.integer :daily_recovered

      t.timestamps
    end
  end
end
