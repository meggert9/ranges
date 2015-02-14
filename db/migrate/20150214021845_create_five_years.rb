class CreateFiveYears < ActiveRecord::Migration
  def change
    create_table :five_years do |t|
      t.datetime :date
      t.decimal :open
      t.decimal :pitopen
      t.decimal :high
      t.decimal :low
      t.decimal :close

      t.timestamps
    end
  end
end
