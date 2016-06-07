class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :runner_id
      t.integer :race_id
      t.string :photo_url

      t.timestamps

    end
  end
end
