class CreateRaceResults < ActiveRecord::Migration
  def change
    create_table :race_results do |t|
      t.text :summary
      t.string :pr
      t.integer :time
      t.integer :race_id
      t.integer :runner_id

      t.timestamps

    end
  end
end
