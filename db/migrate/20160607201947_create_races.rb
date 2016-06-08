class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.integer :state_id
      t.string :city
      t.string :state
      t.date :date
      t.string :name

      t.timestamps

    end
  end
end
